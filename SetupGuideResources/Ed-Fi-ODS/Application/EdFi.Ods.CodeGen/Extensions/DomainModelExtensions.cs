using System.Collections.Generic;
using System.Data;
﻿using System;
using System.Linq;
using EdFi.Ods.Common;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Models.Domain;
using EdFi.Ods.Common.Models.Resource;
using EdFi.Ods.Common.Specifications;

namespace EdFi.Ods.CodeGen.Extensions
{
    public static class DomainModelExtensions
    {
        /// <summary>
        /// Check if resource is abstract.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static bool IsAbstract(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.Entity.IsAbstract;
        }

        /// <summary>
        /// Check if resource is a base entity.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static bool IsBase(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.Entity != null && resourceClassBase.Entity.IsBase;
        }

        /// <summary>
        /// Check if resource child item is derived from another resource.
        /// </summary>
        /// <param name="resourceChildItem">ResourceChildItem object</param>
        /// <param name="resource">Resource object</param>
        /// <returns></returns>
        public static bool IsDerivedFrom(this ResourceChildItem resourceChildItem, ResourceClassBase resource)
        {
            return  resourceChildItem.Entity.IncomingAssociations.Any(
                    a => (a.OtherEntity.IsBase || a.OtherEntity.IsAbstract)
                         && resource.Entity != null
                         && resource.Entity.BaseEntity != null
                         && ModelComparers.Entity.Equals(
                             a.OtherEntity,
                             resource.Entity.BaseEntity));
        }

        /// <summary>
        /// Check if resource collection is derived from another resource.
        /// </summary>
        /// <param name="collection">Collection object</param>
        /// <param name="resource">Resource object</param>
        /// <returns></returns>
        public static bool IsDerivedFrom(this Collection collection, ResourceClassBase resource)
        {
            return collection.Association.OtherEntity.IncomingAssociations.Any(
                    a => (a.OtherEntity.IsBase || a.OtherEntity.IsAbstract)
                         && resource.Entity != null
                         && resource.Entity.BaseEntity != null
                         && ModelComparers.Entity.Equals(
                             a.OtherEntity,
                             resource.Entity.BaseEntity));
        }

        /// <summary>
        /// Check if resource is derived from another resource.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <param name="baseResourceClassBase">Resource object</param>
        /// <returns></returns>
        public static bool IsDerivedFrom(this ResourceClassBase resourceClassBase, ResourceClassBase baseResourceClassBase)
        {
            return resourceClassBase.Entity != null
                   && resourceClassBase.Entity.IncomingAssociations
                                       .Any(
                                           a => a.AssociationType == AssociationViewType.FromBase
                                                && ModelComparers.Entity.Equals(
                                                    a.OtherEntity,
                                                    baseResourceClassBase.Entity));
        }

        /// <summary>
        /// Check if reference is sole contributor of any primary key columns for parent resource.
        /// </summary>
        /// <param name="reference">Reference object</param>
        /// <returns></returns>
        public static bool IsExclusiveForIdentifyingColumns(this Reference reference)
        {
            var primaryKeysInReference = reference.Parent.AllProperties.Where(p => p.IsIdentifying)
                                                  .Intersect(reference.Properties);

            var otherReferences = reference.Parent.References.Except(reference);
            var any = primaryKeysInReference.Any(
                p =>
                    otherReferences.All(
                        r => r.Properties.All(rp => !ModelComparers.ResourceProperty.Equals(rp, p))));

            return any;
        }

        /// <summary>
        /// Contains all the references for the resource including all extension properties.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<Reference> UnifiedReferences(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.References
                    .Concat(resourceClassBase.ExtensionReferences());
        }

        /// <summary>
        /// Contains all the properties for the resource including extension and unified key property.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> UsiAwareUnifiedAllProperties(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.UnifiedAllProperties()
                                    .Union(
                                        resourceClassBase.IdentifyingProperties.Where(
                                            x => x.IsUnified()),
                                        ModelComparers.ResourcePropertyNameOnly)
                                    .Where(
                                        p =>
                                            !resourceClassBase.References.SelectMany(
                                                                    r => r.Properties)
                                                                .Select(r => r.PropertyName)
                                                                .Contains(p.PropertyName));
        }

        /// <summary>
        /// Get properties that are defined on the entities underlying this resource.
        /// </summary>
        /// <param name="resourceClassBase"></param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> GetLocalResourceProperties(
            this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.Properties.Where(x => x.EntityProperty.IsLocallyDefined);
        }

        /// <summary>
        /// Contains local properties for the resource including all extension properties.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> UnifiedLocalProperties(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.LocalProperties()
                                    .Concat(resourceClassBase.GetAllExtensionProperties());
        }

        /// <summary>
        /// Contains all the properties for the resource including all extension properties.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> UnifiedAllProperties(this ResourceClassBase resourceClassBase)
        {
            return
                resourceClassBase.AllProperties.Concat(resourceClassBase.GetAllExtensionProperties());
        }

        /// <summary>
        /// Contains all the locally defined properties for the resource including extension properties.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> LocalProperties(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.UnifiedAllProperties()
                                    .Where(
                                        x =>
                                            ModelComparers.Entity.Equals(
                                                resourceClassBase.Entity,
                                                x.EntityProperty.Entity));
        }

        /// <summary>
        /// Gets all extension references for a given resource/resource child.
        /// </summary>
        /// <param name="resourceClassBase"></param>
        /// <returns></returns>
        public static IEnumerable<Reference> ExtensionReferences(
            this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.Entity == null
                ? Enumerable.Empty<Reference>()
                : resourceClassBase.Entity.ExtensionReferences(resourceClassBase);
        }

        /// <summary>
        /// Gets all extension references for a given entity
        /// </summary>
        /// <param name="entity">The entity to get extension references for</param>
        /// <param name="resourceClassBase">The resource used to build the reference</param> 
        /// <returns></returns>
        public static IEnumerable<Reference> ExtensionReferences(
            this Entity entity,
            ResourceClassBase resourceClassBase)
        {

            return entity.OutgoingAssociations.Where(
                             association =>
                                 association.AssociationType == AssociationViewType.ToExtension)
                         .SelectMany(a => a.OtherEntity.NonNavigableParents)
                         .Where(a => !a.OtherEntity.IsLookupEntity())
                         .Select(a => new Reference(resourceClassBase, a));
        }

        /// <summary>
        /// Contains all the request properties for the resource including extension properties.
        /// </summary>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> AllRequestProperties(this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.IsDerived
                ? resourceClassBase.LocalProperties()
                                   .Union(
                                       resourceClassBase.IdentifyingProperties.Where(
                                           x => x.IsIdentifyingAndHasAssociations()),
                                       ModelComparers.ResourcePropertyNameOnly)
                : resourceClassBase.UnifiedAllProperties();
        }

        /// <summary>
        /// Helper method used to convert an EntityProperty to a ResourceProperty
        /// </summary>
        /// <param name="entityProperty">EntityProperty to convert</param>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static ResourceProperty ToResourceProperty(
            this EntityProperty entityProperty,
            ResourceClassBase resourceClassBase)
        {
            return new ResourceProperty(resourceClassBase, entityProperty);
        }

        /// <summary>
        /// Helper method used to convert an IEnumerable(EntityProperty) to a IEnumerable(ResourceProperty)
        /// </summary>
        /// <param name="entityProperties">IEnumerable of EntityProperties</param>
        /// <param name="resourceClassBase">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> ToResourceProperties(
            this IEnumerable<EntityProperty> entityProperties,
            ResourceClassBase resourceClassBase)
        {
            return
                entityProperties
                        .Where(property => ResourceSpecification.IsAllowableResourceProperty(property.PropertyName))
                        .Select(property => property.ToResourceProperty(resourceClassBase));
        }

        /// <summary>
        /// Gets all extension properties for a given resource/resource child.
        /// </summary>
        /// <param name="resourceClassBase">The resource/ resource child to get extension properties for</param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> GetAllExtensionProperties(
            this ResourceClassBase resourceClassBase)
        {
            return resourceClassBase.Entity != null
                ? resourceClassBase.Entity.GetAllExtensionProperties()
                                    .ToResourceProperties(resourceClassBase)
                : Enumerable.Empty<ResourceProperty>();
        }

        /// <summary>
        /// Check if resource is a type entity.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static bool IsTypeEntity(this ResourceClassBase resource)
        {
            return resource.Entity.IsTypeEntity;
        }

        /// <summary>
        /// Check if resource is the aggregate root.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static bool IsAggregateRoot(this ResourceClassBase resource)
        {
            return resource.Entity.IsAggregateRoot;
        }

        /// <summary>
        /// Check if resource is a descriptor entity.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static bool IsDescriptorEntity(this ResourceClassBase resource)
        {
            return resource.Entity.IsDescriptorEntity;
        }

        /// <summary>
        ///     Check if resource is a lookup entity.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static bool IsLookup(this ResourceClassBase resource)
        {
            return resource.Entity.IsLookup;
        }

        /// <summary>
        /// Check if property is identifying and has incoming associations
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsIdentifyingAndHasAssociations(this ResourceProperty property)
        {
            if (!property.IsIdentifying || property.EntityProperty == null)
                return false;

            return property.HasAssociations();
        }

        /// <summary>
        /// Check if property is a unified key
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsUnified(this ResourceProperty property)
        {
            // a unified key has at least two associations in the entity property
            return property.IsIdentifying && property.EntityProperty.IsUnified();
        }

        /// <summary>
        /// Check if property is a unified key
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsUnified(this EntityProperty property)
        {
            if (!property.IsIdentifying)
                return false;

            // a unified key has at least two associations
            return property.IncomingAssociations.Count > 1;
        }

        /// <summary>
        /// Check property has any associations (this could be a reference and/or unified key)
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool HasAssociations(this ResourceProperty property)
        {
            return property.EntityProperty.IncomingAssociations.Any();
        }

        /// <summary>
        /// Check if resource has any unified keys
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static bool HasUnifiedKeys(this ResourceClassBase resource)
        {
            return resource.IdentifyingProperties.Any(x => x.IsUnified());
        }

        /// <summary>
        /// Obtain the name of the resource property without the parent resource prefix, as is done for the JSON properties.
        /// </summary>
        /// <param name="resourceProperty">The property to calculate the name for.</param>
        /// <returns></returns>
        public static string DisinheritedPropertyName(this ResourceProperty resourceProperty)
        {
            return JsonNamingConvention.ApplyParentPrefixRemovalConvention(
                //This is intentionally used over the ParentName property as it has a different use case
                //and can currently be the property's parent's Entity name instead.
                resourceProperty.Parent.Name,
                resourceProperty.PropertyName);
        }

        /// <summary>
        /// Determines if a property needs to be synchronized.
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsSynchronizable(this ResourceProperty property)
        {
            if (property.PropertyName.Equals("Id"))
                return false;

            return !property.IsIdentifying || property.IsPersonOrUsi();
        }

        /// <summary>
        /// Generates the range attribute property information for decimal and money properties.
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static string ToRangeAttributeCSharp(this ResourceProperty property)
        {
            //TODO SqlServer specific
            switch (property.EntityProperty.PropertyType.DbType)
            {
                case DbType.Decimal:
                    return String.Format(
                        "[Range(typeof(decimal), \"-{0}.{1}\", \"{0}.{1}\")]",
                        new string(
                            '9',
                            property.EntityProperty.PropertyType.Precision - property.EntityProperty.PropertyType.Scale),
                        new string('9', property.EntityProperty.PropertyType.Scale));

                case DbType.Currency:
                    return "[Range(typeof(decimal), \"-922337203685477.5808\", \"922337203685477.5807\")]";

                default:
                    return null;
            }
        }

        /// <summary>
        /// Checks if the property is an inherited property
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsInheritedProperty(this ResourceProperty property)
        {
            return property.Parent.InheritedProperties()
                           .Contains(property);
        }

        /// <summary>
        /// Get the derived base property
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static AssociationView DerivedBaseProperty(this ResourceProperty property)
        {
            return property.EntityProperty
                           .IncomingAssociations
                           .FirstOrDefault(
                               associationView => associationView.AssociationType == AssociationViewType.FromBase);
        }

        /// <summary>
        /// Gets the parent for the resource.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static Entity GetParent(this ResourceClassBase resource)
        {
            return resource.Entity.Parent;
        }

        /// <summary>
        /// Checks to see if the property is an USI property or if the property is a person entity
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsPersonOrUsi(this ResourceProperty property)
        {
            return property.Parent.Entity.IsPersonEntity() || UniqueIdSpecification.IsUSI(property.PropertyName);
        }

        /// <summary>
        /// Finds the inherited properties for a resource
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> InheritedProperties(this ResourceClassBase resource)
        {
            var inheritedProperties = resource.UnifiedAllProperties().Where(x => !ModelComparers.Entity.Equals(resource.Entity, x.EntityProperty.Entity));

            if (resource.Entity.Extensions != null && resource.Entity.Extensions.Length > 0)
            {
                foreach (var extension in resource.Entity.Extensions)
                {
                    inheritedProperties = inheritedProperties.Where(x => !string.Equals(extension.Name, x.EntityProperty.Entity.Name));
                }
            }

            return inheritedProperties;
        }

        /// <summary>
        /// Gets the association for a backreferenced entity
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static IEnumerable<AssociationView> BackReferences(this ResourceClassBase resource)
        {
            // we are looking for inbound aggregate references outside of this entities aggregate 
            // this is tied to key unification
            return resource.Entity.IncomingAssociations
                           .Where(
                               x =>
                                   !(x.OtherEntity.IsTypeEntity || x.OtherEntity.IsDescriptorEntity)
                                   && !resource.Entity.Ancestors.Contains(x.OtherEntity)
                                   && x.OtherEntity.IsAggregateRoot);
        }

        /// <summary>
        /// Gets the properties from a backreference entity. 
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static IEnumerable<ResourceProperty> BackReferencedProperties(this ResourceClassBase resource)
        {
            // a backreference is required when we have a property that is associated to multiple entities.
            // this is tied to unification.
            return resource.Entity.IncomingAssociations
                           .SelectMany(
                               x => x.ThisProperties
                                     .Select(p => new {p.PropertyName, Association = p}))
                           .GroupBy(x => x.PropertyName, y => y.Association)
                           .Where(x => x.Count() > 1)
                           .SelectMany(x => x.Select(y => new ResourceProperty(resource, y)));
        }

        /// <summary>
        /// Checks if the resource has any back references.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static bool HasBackReferences(this ResourceClassBase resource)
        {
            if (resource.IsTypeEntity() || resource.IsDescriptorEntity())
                return false;

            return resource.BackReferencedProperties()
                           .Any();
        }

        /// <summary>
        /// Returns the incoming context for the property that can have multiple associations (ie role based)
        /// </summary>
        /// <param name="resource"></param>
        /// <param name="property"></param>
        /// <returns></returns>
        public static AssociationView Context(this ResourceClassBase resource, ResourceProperty property)
        {
            if (!property.HasAssociations())
                return null;

            return property.EntityProperty
                           .IncomingAssociations
                           .FirstOrDefault(y => y == resource.Entity.ParentAssociation);
        }

        /// <summary>
        /// Checks if the aggregates are the same for both entities.
        /// </summary>
        /// <param name="thisEntity"></param>
        /// <param name="otherEntity"></param>
        /// <returns></returns>
        public static bool IsSameAggregate(this Entity thisEntity, Entity otherEntity)
        {
            return ModelComparers.Entity.Equals(thisEntity.Aggregate.AggregateRoot, otherEntity.Aggregate.AggregateRoot);
        }

        /// <summary>
        /// Determines if the derived resource collection is actually a type entity
        /// </summary>
        /// <param name="collection"></param>
        /// <returns></returns>
        public static bool IsDerivedEntityATypeEntity(this Collection collection)
        {
            // this is required to augment the data member name for entities that are derived but their underlying entity is a type entity
            // this is required for template matching
            return collection.Association
                             .OtherEntity
                             .IncomingAssociations
                             .Any(
                                 p =>
                                     p.OtherProperties.Any(
                                         y =>
                                             y.PropertyName.Equals(collection.Association.OtherEntity.Name + "TypeId")));
        }

        /// <summary>
        /// Returns the incoming context for the property that can have multiple associations (ie role based)
        /// </summary>
        /// <param name="entity"></param>
        /// <param name="property"></param>
        /// <returns></returns>
        public static AssociationView Context(this Entity entity, EntityProperty property)
        {
            if (!property.IncomingAssociations.Any())
                return null;

            return property
                .IncomingAssociations
                .FirstOrDefault(y => y == entity.ParentAssociation);
        }

        public static IEnumerable<AssociationView> ExtensionAssociations(this ResourceProperty property)
        {
            return property.EntityProperty.Entity.OutgoingAssociations
                           .Where(x => x.Association.Cardinality == Cardinality.OneToOneExtension)
                           .SelectMany(x => x.OtherEntity.IncomingAssociations);
        }

        /// <summary>
        /// Returns the base entity property.
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static EntityProperty BaseEntityProperty(this ResourceProperty property)
        {
            return property.Parent.Entity.BaseEntity.Properties.FirstOrDefault(
                x => ModelComparers.EntityPropertyNameOnly.Equals(x, property.EntityProperty));
        }

        /// <summary>
        /// Prioritizes the collections so that the inherited navigable children are rendered first.
        /// </summary>
        /// <param name="resource"></param>
        /// <returns></returns>
        public static IEnumerable<Collection> PrioritizedCollections(this ResourceClassBase resource)
        {
            if (!resource.Collections.Any())
                  yield break;

            var sortOrder = resource.Entity.InheritedNavigableChildren.OrderBy(x => x.Name)
                                    .Select(x => x.Name)
                                    .Concat(
                                        resource.Entity.NavigableChildren.OrderBy(x => x.Name)
                                                .Select(x => x.Name));

            foreach (var name in sortOrder)
            {
                yield return resource.CollectionByName[name];
            }
        }

        public static bool IsAggregateReference(this ResourceClassBase resource)
        {
            return resource.IsAggregateRoot() && !resource.IsDescriptorEntity() && !resource.IsTypeEntity();
        }

        public static string GetModelsInterfacePropertyName(this EntityProperty entityProperty)
        {
            if (entityProperty.IsLookup)
                return entityProperty.PropertyName.TrimSuffix("Id");

            if (UniqueIdSpecification.IsCoreUSI(entityProperty.PropertyName))
                return UniqueIdSpecification.GetUniqueIdPropertyName(entityProperty.PropertyName);

            return entityProperty.PropertyName;
        }

        public static string GetLookupValuePropertyName(this EntityProperty property)
        {
            if (!property.IsLookup)
            {
                throw new ArgumentException(String.Format(
                    "Property '{0}' of entity '{1}' is not a Type or Descriptor lookup property.", 
                    property.PropertyName, property.Entity.Name));
            }

            return property.PropertyName.TrimSuffix("Id");
        }

        /// <summary>
        /// Will convert a USI property to a UniqueID format
        /// If the property is not a USI type property, then an exception is thrown.
        /// </summary>
        /// <param name="usiPropertyName"></param>
        /// <returns></returns>
        public static string ConvertToUniqueId(this string usiPropertyName)
        {
            if (!UniqueIdSpecification.IsUSI(usiPropertyName))
            {
                throw new ArgumentException(
                    string.Format(
                        "Supplied property '{0}' is not an USI property.",
                        usiPropertyName));
            }

            return UniqueIdSpecification.GetUniqueIdPropertyName(usiPropertyName);
        }

        public static IEnumerable<EntityProperty> TransformUsisToUniqueIds(this IEnumerable<EntityProperty> properties)
        {
            var suppliedProperties = properties.ToList();

            // Return an empty enumerable if there aren't any properties in the source
            if (!suppliedProperties.Any())
                yield break;

            var containingEntity = suppliedProperties
                .Select(x => x.Entity)
                .FirstOrDefault(x => x != null);

            if (containingEntity == null)
                throw new InvalidOperationException("None of the properties supplied have an associated Entity.");

            foreach (var entityProperty in suppliedProperties)
            {
                // If column is an USI column...
                if (UniqueIdSpecification.IsUSI(entityProperty.PropertyName))
                {
                    string uniqueIdPropertyName = entityProperty.PropertyName.ConvertToUniqueId();

                    // Find a corresponding UniqueId column, if it exists
                    var correspondingUniqueIdProperty = containingEntity
                        .Properties
                        .SingleOrDefault(p => p.PropertyName.EqualsIgnoreCase(uniqueIdPropertyName));

                    if (correspondingUniqueIdProperty != null)
                    {
                        // Swap the UniqueId column in for the USI
                        yield return correspondingUniqueIdProperty;
                        continue;
                    }

                    // Replace the USI column with a newly created UniqueId column
                    yield return
                        new EntityProperty(uniqueIdPropertyName,
                        new PropertyType(DbType.AnsiString, 32, entityProperty.PropertyType.IsNullable),
                        string.Format("A unique alpha-numeric code assigned to a {0}.", entityProperty.Entity.Name));
                }
                else if (UniqueIdSpecification.IsUniqueId(entityProperty.PropertyName))
                {
                    string usiPropertyName = UniqueIdSpecification.GetUsiPropertyName(entityProperty.PropertyName);

                    // Find a corresponding USI column, if it exists
                    var correspondingUsiProperty = containingEntity
                        .Properties
                        .SingleOrDefault(p => p.PropertyName.EqualsIgnoreCase(usiPropertyName));

                    // If a corresponding USI property exists, then skip the UniqueId (it's been returned for use wherever the USI had been used)
                    if (correspondingUsiProperty != null)
                        continue;

                    yield return entityProperty;
                }
                else
                {
                    yield return entityProperty;
                }
            }
        }

        public static IEnumerable<EntityProperty> UnifiedProperties(this Entity entity)
        {
            return entity.Properties.Concat(entity.GetAllExtensionProperties());
        }

        public static IEnumerable<EntityProperty> EntityRecordInterfaceUnifiedProperties(
            this Entity entity)
        {
            return entity.UnifiedProperties()
                         .Where(PropertyIsIncludedForEntityRecordInterface);
        }

        public static bool PropertyIsIncludedForEntityRecordInterface(EntityProperty entityProperty)
        {
            return entityProperty.PropertyName != "LastModifiedDate"
                   && entityProperty.PropertyName != "CreateDate";
        }

        /// <summary>
        /// Gets the namespace qualified full name of the NHibernate Entity for
        /// the given DomainModel entity.
        /// </summary>
        /// <param name="entity">A domain model entity</param>
        /// <param name="classNameSuffix">And specialized suffix that should be added to the class name based on the caller's context.</param>
        /// <returns>Namespace qualified full name of the NHibernate Entity</returns>
        public static string EntityFullName(this Entity entity, string classNameSuffix = "")
        {
            return string.Format("{0}.{1}{2}", entity.AggregateNamespace(), entity.ResolvedCoreEntityName(), classNameSuffix);
        }

        /// <summary>
        /// Gets the namespace qualified full name of the NHibernate Query Entity for
        /// the given DomainModel entity.
        /// </summary>
        /// <param name="entity">A domain model entity</param>
        /// <param name="classNameSuffix">And specialized suffix that should be added to the class name based on the caller's context.</param>
        /// <returns>Namespace qualified full name of the NHibernate Query Entity</returns>
        public static string EntityForQueryFullName(this Entity entity, string classNameSuffix = "")
        {
            return string.Format("{0}.{1}{2}", entity.AggregateQueryNamespace(), entity.ResolvedCoreEntityName(), classNameSuffix);
        }

        /// <summary>
        /// Provides the NHibernate Entity Aggregate namespace for the aggregate of the provided domain entity.
        /// </summary>
        /// <param name="entity">A domain model entity</param>
        /// <returns>NHibernate Entity Aggregate namespace for the aggregate of the provided domain entity</returns>
        public static string AggregateNamespace(this Entity entity)
        {
            return Namespaces.Entities.NHibernate.GetAggregateNamespace(entity.Aggregate.Name);
        }

        /// <summary>
        /// Provides the NHibernate Query Entity Aggregate namespace for the aggregate of the provided domain entity.
        /// </summary>
        /// <param name="entity">A domain model entity</param>
        /// <returns>NHibernate Query Entity Aggregate namespace for the aggregate of the provided domain entity</returns>
        public static string AggregateQueryNamespace(this Entity entity)
        {
            return Namespaces.Entities.NHibernate.QueryModels.GetAggregateNamespace(entity.Aggregate.Name);
        }

        /// <summary>
        /// Get the namespace for the entity aggregate, relative to the base namespace.
        /// Default base namespace is <see cref="Namespaces.Entities.BaseNamespace" />.
        /// </summary>
        /// <param name="entity">The entity to use for obtaining the aggregate namespace</param>
        /// <param name="baseNamespace">The base namespace to trim, default is <see cref="Namespaces.Entities.BaseNamespace" /></param>
        /// <param name="isQueryModel">Indicates the aggregate's query namespace should be used.</param>
        /// <returns></returns>
        /// <exception cref="Exception">Throws if the Entity's aggregate namespace does not contain the baseNamespace</exception>
        public static string GetRelativeAggregateNamespace(this Entity entity, string baseNamespace = null, bool isQueryModel = false)
        {
            baseNamespace = baseNamespace ?? Namespaces.Entities.BaseNamespace;

            string fullNamespace = isQueryModel ? entity.AggregateQueryNamespace() : entity.AggregateNamespace();

            string relativeNamespace;

            if (!fullNamespace.TryTrimPrefix(baseNamespace, out relativeNamespace))
            {
                throw new Exception(string.Format("'{0}' is not a valid base namespace for determining the relative namespace from '{1}' because it is not present as a prefix.",
                    baseNamespace, fullNamespace));
            }

            return relativeNamespace.TrimStart('.');
        }

        public static string GetRelativeEntityNamespace(this Entity entity, bool isQueryModel = false)
        {
            return entity.GetRelativeAggregateNamespace(Namespaces.Entities.NHibernate.BaseNamespace, isQueryModel)
                + "." + entity.Name;
        }

        /// <summary>
        /// Is this property synchronized to the DB as a part of a write/update
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static bool IsSynchronizedProperty(this EntityProperty property)
        {
            return property.PropertyName != "Id"
                   && property.PropertyName != "CreateDate"
                   && property.PropertyName != "LastModifiedDate";
        }

        /// <summary>
        /// Indicates whether the entity property is a unique id on the entity that defines the unique id
        /// </summary>
        /// <param name="entity">The defining entity for the UniqueId</param>
        /// <param name="p">entity property to check</param>
        /// <returns></returns>
        public static bool IsDefiningUniqueId(this string p, Entity entity)
        {
            return p.Contains(entity.Name + "UniqueId");
        }

        /// <summary>
        /// contains all of the properties for an instance's properties, extension-properties and its
        ///        derived class properties and extension-properties
        /// </summary>
        /// <param name="entity">Resource object</param>
        /// <returns></returns>
        public static IEnumerable<EntityProperty> UnifiedSynchronizableInheritedAndLocalProperties(this Entity entity)
        {
            var allUnifiedProperties = entity.UnifiedProperties()
                                           .Where(IsSynchronizedProperty);

            if (!entity.IsDerived)
                return allUnifiedProperties;

            return allUnifiedProperties
                    .Concat(entity.BaseEntity.UnifiedProperties())
                    .Where(IsSynchronizedProperty);
        }


        /// <summary>
        /// Removes the trailing uniquid or usi from the property name.
        /// </summary>
        /// <param name="property"></param>
        /// <returns></returns>
        public static string RemoveUniqueIdOrUsiFromPropertyName(this ResourceProperty property)
        {
            return UniqueIdSpecification.IsUniqueId(property.PropertyName)
                ? UniqueIdSpecification.RemoveUniqueIdSuffix(property.PropertyName)
                : UniqueIdSpecification.RemoveUsiSuffix(property.PropertyName);
        }

        /// <summary>
        /// Scrubs the string for swagger xml documentation
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string ScrubForXmlDocumentation(this string str)
        {
            return str.ScrubForSwagger()
                      .Replace("\"", "\\\"");
        }
    }
}