using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Xml.Linq;
using EdFi.Ods.CodeGen.Composites;
using EdFi.Ods.CodeGen.Extensions;
using EdFi.Ods.Common.Composites;
using EdFi.Ods.Common.Metadata;
using EdFi.Ods.Common.Specifications;
using EdFi.Ods.Common.Extensions;
using EdFi.Ods.Common.Inflection;
using EdFi.Ods.Common.Models;
using EdFi.Ods.Common.Models.Domain;
using EdFi.Ods.Common.Models.Resource;
using EdFi.Ods.Common.Utils.Profiles;
using Resource = EdFi.Ods.Common.Models.Resource.Resource;

namespace EdFi.Ods.CodeGen.Controllers
{
    public class SwaggerMetadataViewModel
    {
        public IList<SwaggerSectionViewModel> SwaggerSections { get; set; }
    }

    public class SwaggerSectionViewModel
    {
        public string SectionName { get; set; }
        public IList<ApiDeclaration> ApiDeclarations { get; set; }
        public ResourceListing ResourceListing { get; set; }
    }

    public class StandardResponses
    {
        public static ApiResponseMessageSpec NotModified
        {
            get
            {
                return new ApiResponseMessageSpec
                {
                    Code = 304,
                    Message = "The resource's current server-side ETag value matched the If-None-Match header value supplied with the request indicating the resource has not been modified.",
                };
            }
        }

        public static ApiResponseMessageSpec BadRequest
        {
            get
            {
                return new ApiResponseMessageSpec
                {
                    Code = 400,
                    Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors.  This will typically be an issue with the query parameters or their values.",
                };
            }
        }

        public static ApiResponseMessageSpec Unauthorized
        {
            get
            {
                return new ApiResponseMessageSpec
                {
                    Code = 401,
                    Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed.",
                };
            }
        }

        public static ApiResponseMessageSpec Forbidden
        {
            get
            {
                return new ApiResponseMessageSpec
                {
                    Code = 403,
                    Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed.",
                };
            }
        }

        public static ApiResponseMessageSpec NotFound
        {
            get
            {
                return new ApiResponseMessageSpec
                {
                    Code = 404,
                    Message = "The resource could not be found.",
                };
            }
        }

        public static ApiResponseMessageSpec InternalServerError
        {
            get
            {
                return new ApiResponseMessageSpec
                {
                    Code = 500,
                    Message = "An unhandled error occurred on the server. See the response body for details.",
                    ResponseModel = "webServiceError",
                };
            }
        }

        public static ApiResponseMessageSpec OkForCollection(Resource resource)
        {
            return new ApiResponseMessageSpec
            {
                Code = 200,
                ResponseModel = "array",
                Items = new ItemsSpec { Ref = resource.Name.ToCamelCase() },
                Message = "The matching resource(s) were successfully retrieved.  If no instances are found will return an empty collection.",
            };
        }

        public static ApiResponseMessageSpec OkForCollection(string ItemsSpecRef)
        {
            return new ApiResponseMessageSpec
            {
                Code = 200,
                ResponseModel = "array",
                Items = new ItemsSpec { Ref = ItemsSpecRef },
                Message = "The matching resource(s) were successfully retrieved.  If no instances are found will return an empty collection.",
            };
        }

        public static ApiResponseMessageSpec OkForSingleItem(Resource resource)
        {
            return new ApiResponseMessageSpec
            {
                Code = 200,
                ResponseModel = resource.Name.ToCamelCase(),
                Message = "The resource was successfully retrieved.",
            };
        }
    }

    public class StandardParameters
    {
        public static ApiParameterSpec Limit
        {
            get
            {
                return new ApiParameterSpec
                {
                    ParamType = "query",
                    Name = "limit",
                    Description = "Indicates the maximum number of items that should be returned in the results (defaults to 25).",
                    Type = "integer",
                    Required = false,
                    Minimum = 1,
                    Maximum = 250,
                };
            }
        }

        public static ApiParameterSpec Offset
        {
            get
            {
                return new ApiParameterSpec
                {
                    ParamType = "query",
                    Name = "offset",
                    Description = "Indicates how many items should be skipped before returning results.",
                    Type = "integer",
                    Required = false,
                };
            }
        }

        public static ApiParameterSpec IfNoneMatch
        {
            get
            {
                return new ApiParameterSpec
                {
                    ParamType = "header",
                    Name = "If-None-Match",
                    Description = "The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.",
                    Type = "string",
                    Required = false,
                };
            }
        }

        public static ApiParameterSpec Fields
        {
            get
            {
                return new ApiParameterSpec
                {
                    ParamType = "query",
                    Name = "fields",
                    Description = "Specifies a subset of properties that should be returned for each entity (e.g. \"property1,collection1(collProp1,collProp2)\").",
                    Type = "string",
                    Required = false,
                };
            }
        }

        public static ApiParameterSpec QueryExpression
        {
            get
            {
                return new ApiParameterSpec
                {
                    ParamType = "query",
                    Name = "q",
                    Description = "Specifies a query filter expression for the request.  Currently only supports range-based queries on dates and numbers (e.g. \"[2016-03-07..2016-03-10]\").",
                    Type = "string",
                    Required = false,
                };
            }
        }
    }

    public class SwaggerMetadataController
    {
        private readonly XElement _defaultCollectionRoute = XElement.Parse("<Route relativeRouteTemplate='/{compositeName}' />");
        private readonly XElement _defaultItemRoute = XElement.Parse("<Route relativeRouteTemplate='/{compositeName}/{id}' />");

        private readonly IResourceJoinPathExpressionProcessor _resourceJoinPathExpressionProcessor;
        private readonly IResourceModelProvider _resourceModelProvider;
        private IReadOnlyList<StandardizedResourceProfileData> _standardizedResourceProfileData;
        private SortedDictionary<string, IReadOnlyList<StandardizedResourceProfileData>> _profileResourceDataByProfileName;

        public SwaggerMetadataController(
            IResourceJoinPathExpressionProcessor resourceJoinPathExpressionProcessor,
            IResourceModelProvider resourceModelProvider,
            IProfileResourceNamesProvider profileResourceNamesProvider,
            IProfileResourceModelProvider profileResourceModelProvider)
        {
            _resourceJoinPathExpressionProcessor = resourceJoinPathExpressionProcessor;
            _resourceModelProvider = resourceModelProvider;
            InitializeStandardizedResourceProfileData(profileResourceNamesProvider, profileResourceModelProvider);
        }

        public SwaggerMetadataController(
            IResourceJoinPathExpressionProcessor resourceJoinPathExpressionProcessor,
            IResourceModelProvider resourceModelProvider)
        {
            _resourceJoinPathExpressionProcessor = resourceJoinPathExpressionProcessor;
            _resourceModelProvider = resourceModelProvider;
            InitializeStandardizedResourceProfileData();
        }

        private void InitializeStandardizedResourceProfileData()
        {
            _standardizedResourceProfileData = GetStandardizedResourceProfileData();
            InitializeProfileResourceDataByProfileName();
        }

        private void InitializeStandardizedResourceProfileData(IEnumerable<Resource> resources)
        {
            _standardizedResourceProfileData = resources.Select(r => new StandardizedResourceProfileData
            {
                Readable = r,
                Writable = r,
                ProfileName = null
            }).ToReadOnlyList();

            InitializeProfileResourceDataByProfileName();
        }

        private void InitializeStandardizedResourceProfileData(
            IProfileResourceNamesProvider profileResourceNamesProvider,
            IProfileResourceModelProvider profileResourceModelProvider)
        {
            _standardizedResourceProfileData = GetStandardizedResourceProfileData(profileResourceNamesProvider, profileResourceModelProvider);
            InitializeProfileResourceDataByProfileName();
        }

        private void InitializeProfileResourceDataByProfileName()
        {
            _profileResourceDataByProfileName = new SortedDictionary<string, IReadOnlyList<StandardizedResourceProfileData>>(
                                            _standardizedResourceProfileData
                                                .GroupBy(d => string.IsNullOrWhiteSpace(d.ProfileName) ? string.Empty : d.ProfileName)
                                                .ToDictionary(k => k.Key, k => k.ToReadOnlyList()));
        }

        private class CompositeSection
        {
            /// <summary>
            /// Initializes a new instance of the <see cref="T:CompositeSection"/> class.
            /// </summary>
            /// <param name="queryStringPropertyFactory">A factory method for creating properties used in defining parameters in operations
            /// based on the full resource model's properties, but without the standard "prefix removal" JSON convention applied.</param>
            public CompositeSection(string categoryName, string categoryDisplayName, IReadOnlyList<Resource> resources,
                IReadOnlyList<ResourceDetails> resourceDetails, IReadOnlyList<XElement> routes,
                ResourceModel fullResourceModel, Func<Resource, ResourceProperty, ResourceProperty> queryStringPropertyFactory)
            {
                QueryStringPropertyFactory = queryStringPropertyFactory;
                CategoryName = categoryName;
                CategoryDisplayName = categoryDisplayName;
                Resources = resources;
                ResourceDetails = resourceDetails;
                Routes = routes;
                FullResourceModel = fullResourceModel;
            }

            public Func<Resource, ResourceProperty, ResourceProperty> QueryStringPropertyFactory { get; private set; }

            public string CategoryName { get; private set; }
            public string CategoryDisplayName { get; private set; }
            public IReadOnlyList<Resource> Resources { get; private set; }
            public IReadOnlyList<ResourceDetails> ResourceDetails { get; private set; }
            public IReadOnlyList<XElement> Routes { get; private set; }
            public ResourceModel FullResourceModel { get; private set; }
        }

        private class ResourceDetails
        {
            public Resource CompositeResource { get; set; }
            public string BaseResource { get; set; }
            public XElement Specification { get; set; }
        }

        public SwaggerMetadataViewModel GetCompositesViewModel(ICompositesMetadataProvider compositeMetadataProvider)
        {
            var definitionProcessor =
                new CompositeDefinitionProcessor<CompositeResourceModelBuilderContext, Resource>(
                    new CompositeResourceModelBuilder());

            var resourceModel = _resourceModelProvider.GetResourceModel();

            // It is possible to add validation on composite names within the MetadataController logic if it's needed.
            // Get all the category names
            var categories = compositeMetadataProvider.GetAllCategories();

            var sections = new List<CompositeSection>();

            // Iterate through the composite categories, building the composite resources
            foreach (var categoryNames in categories)
            {
                IReadOnlyList<XElement> compositeDefinitions;

                if (!compositeMetadataProvider.TryGetCompositeDefinitions(
                    categoryNames.Name,
                    out compositeDefinitions))
                    continue;

                var compositeResources = new List<Resource>();
                var resourceSpecifications = new List<ResourceDetails>();

                foreach (var compositeDefinition in compositeDefinitions)
                {
                    // Enable this for composite xml validation.
                    definitionProcessor.UseCompositeValidation();

                    var compositeResource = definitionProcessor.Process(
                        compositeDefinition,
                        resourceModel,
                        new CompositeResourceModelBuilderContext());

                    resourceSpecifications.Add(new ResourceDetails
                    {
                        CompositeResource = compositeResource,
                        Specification = compositeDefinition.Element("Specification"),
                        BaseResource = compositeDefinition.Element("BaseResource").AttributeValue("name")
                    });
                    compositeResources.Add(compositeResource);
                }

                // Initialize XElement for out-of-the-box routes
                var defaultCompositeRoutes = new List<XElement>
                {
                    _defaultCollectionRoute,
                    _defaultItemRoute,
                };

                // Get all route definitions for the category
                IReadOnlyList<XElement> routes;

                if (!compositeMetadataProvider.TryGetRoutes(categoryNames.Name, out routes))
                    throw new Exception(string.Format(
                        "Composite category '{0}' does not have any routes defined.", categoryNames.Name));

                var allSectionRoutes = defaultCompositeRoutes.Concat(routes).ToList();

                sections.Add(
                    new CompositeSection(
                        categoryNames.Name,
                        categoryNames.DisplayName,
                        compositeResources,
                        resourceSpecifications,
                        allSectionRoutes,
                        resourceModel,
                        CreateResourcePropertyForQueryStringParameter));
            }

            InitializeStandardizedResourceProfileData(sections.SelectMany(s => s.Resources));

            var swaggerSections =
                sections.Select(
                    section =>
                        new SwaggerSectionViewModel
                        {
                            SectionName = section.CategoryName,
                            ResourceListing = CreateResourceListing(section.CategoryName, section.CategoryDisplayName, section.Resources),
                            ApiDeclarations = section.Resources.Select(resource =>
                                CreateApiDeclaration(
                                    new StandardizedResourceProfileData
                                    {
                                        Readable = resource,
                                        Writable = resource,
                                        ProfileName = null
                                    },
                                    section.Routes
                                        .Where(route => IsDefaultRoute(route) || RouteAppliesToResource(route, resource, section.ResourceDetails))
                                        .Select(route =>
                                            CreateApiSpec(
                                                resource,
                                                GetApiSpecPath(section, resource, route).EscapeFormatSpecifier(),
                                                GetApiOperationSpec(section, resource, route))
                                        ).ToList(),
                                        DateTime.Today.Year, createCompositeModel: true) // TODO: Remove this when SchoolYear moves to Route.
                                ).ToList()
                        }).ToArray();

            return new SwaggerMetadataViewModel { SwaggerSections = swaggerSections.ToArray() };
        }

        private ResourceProperty CreateResourcePropertyForQueryStringParameter(
            Resource containingResource,
            ResourceProperty fullModelResourceProperty)
        {
            var entityProperty = fullModelResourceProperty.EntityProperty;

            return new ResourceProperty(
                            containingResource,
                            fullModelResourceProperty.PropertyName.ToCamelCase(),
                            fullModelResourceProperty.PropertyType,
                            new PropertyCharacteristics(
                                entityProperty.IsDescriptorLookup,
                                entityProperty.IsDirectLookup,
                                entityProperty.IsIdentifying,
                                true, // All projected properties are "local" properties on the new object
                                entityProperty.IsLookup,
                                entityProperty.IsServerAssigned,
                                entityProperty.IsTypeLookup,
                                entityProperty.LookupEntity == null ? (null as FQN?) : entityProperty.LookupEntity.FullyQualifiedName),
                            fullModelResourceProperty.Description);
        }

        private ApiOperationSpec[] GetApiOperationSpec(CompositeSection compositeSection, Resource compositeResource, XElement route)
        {
            string operationNicknameSuffix = GetOperationSpecNicknameSuffix(compositeSection, compositeResource, route);

            var operationsSpecsForViewModel = new List<ApiOperationSpec>();

            if (operationNicknameSuffix.EqualsIgnoreCase("All"))
            {
                var getByPatterns = new[]
                {
                    new ApiOperationSpec
                    {
                        Method = "GET",
                        Nickname =
                            string.Format("get{0}{1}", compositeResource.PluralName,
                                operationNicknameSuffix),
                        Type = "array",
                        Items = new ItemsSpec {Ref = compositeResource.Name.ToCamelCase()},
                        Summary = "Retrieves resources based with paging capabilities (using the \"Get All\" pattern).",
                        Notes =
                            "This GET operation provides access to resources using the \"Get All\" pattern. In this version of the API there is support for paging.",
                        Parameters =
                            new[]
                                {
                                    StandardParameters.Offset,
                                    StandardParameters.Limit,
                                    StandardParameters.Fields
                                }
                                .ToList(),
                        ResponseMessages = new List<ApiResponseMessageSpec>
                        {
                            StandardResponses.OkForCollection(compositeResource),
                            StandardResponses.BadRequest,
                            StandardResponses.Unauthorized,
                            StandardResponses.Forbidden,
                            StandardResponses.InternalServerError,
                        }
                    },
                    new ApiOperationSpec
                    {
                        Method = "GET",
                        Nickname =
                            string.Format("get{0}ByExample", compositeResource.PluralName),
                        Type = "array",
                        Items = new ItemsSpec {Ref = compositeResource.Name.ToCamelCase()},
                        Summary =
                            "Retrieves a specific resource using the resource's identifier (using the \"Get By Example\" pattern).",
                        Notes =
                            "This GET operation provides access to resources using the \"Get By Example\" pattern. The values of any properties of the resource that are specified will be used to return all matching results (if it exists).",
                        // ToList twice to enforce the new, optional selector query strings appear after the properties
                        Parameters =
                            new[]
                            {
                                StandardParameters.Offset,
                                StandardParameters.Limit,
                                StandardParameters.Fields,
                                StandardParameters.QueryExpression
                            }
                            .Concat(GetApiSpecQueryParameters(compositeSection, compositeResource, route))
                           .Concat(GetResourcePropertiesByExample(compositeSection, compositeResource))
                           .ToList(),
                        ResponseMessages = new List<ApiResponseMessageSpec>
                        {
                            StandardResponses.OkForCollection(compositeResource),
                            StandardResponses.BadRequest,
                            StandardResponses.Unauthorized,
                            StandardResponses.Forbidden,
                            StandardResponses.NotFound,
                            StandardResponses.InternalServerError,
                        }
                    },
                    new ApiOperationSpec
                    {
                        Method = "GET",
                        Nickname = string.Format("get{0}ByKey", compositeResource.PluralName),
                        Type = compositeResource.Name.ToCamelCase(),
                        Summary = "Retrieves a specific resource using the resource's identifier (using the \"Get By Key\" pattern).",
                        Notes = "This GET operation provides access to resources using the \"Get By Key\" pattern. The values of the natural key of the resource must be fully specified, and the service will return the matching result (if it exists).",
                        Parameters =
                            GetResourcePropertiesByKey(compositeSection, compositeResource)
                            .Concat((new[]
                            {
                                StandardParameters.Fields,
                                StandardParameters.IfNoneMatch
                            }))
                            .ToList(),
                        ResponseMessages = new List<ApiResponseMessageSpec>
                        {
                            StandardResponses.OkForSingleItem(compositeResource),
                            StandardResponses.NotModified,
                            StandardResponses.BadRequest,
                            StandardResponses.Unauthorized,
                            StandardResponses.Forbidden,
                            StandardResponses.NotFound,
                            StandardResponses.InternalServerError,
                        }
                    }
                };

                operationsSpecsForViewModel.AddRange(getByPatterns.ToList());
            }

            if (operationNicknameSuffix.StartsWith("By"))
            {
                if (operationNicknameSuffix.Equals("ById"))
                {
                    operationsSpecsForViewModel.Add(new ApiOperationSpec
                    {
                        Method = "GET",
                        Nickname = string.Format(
                            "get{0}{1}",
                            compositeResource.PluralName,
                            operationNicknameSuffix),
                        Type = compositeResource.Name.ToCamelCase(),
                        Summary = "Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).",
                        Notes = "This GET operation provides access to resources using the \"Get By Id\" pattern.",
                        Parameters =
                            GetApiSpecPathParameters(compositeSection, compositeResource, route)
                            .Concat((new[]
                                {
                                    StandardParameters.Fields,
                                    StandardParameters.IfNoneMatch
                                })).ToList(),
                        ResponseMessages = new List<ApiResponseMessageSpec>
                        {
                            StandardResponses.OkForSingleItem(compositeResource),
                            StandardResponses.NotModified,
                            StandardResponses.BadRequest,
                            StandardResponses.Unauthorized,
                            StandardResponses.Forbidden,
                            StandardResponses.NotFound,
                            StandardResponses.InternalServerError,
                        }
                    });
                }
                else
                {
                    string resourceName = operationNicknameSuffix.TrimPrefix("By");

                    var routeParameters = GetApiSpecPathParameters(compositeSection, compositeResource, route).ToList();
                    // Filter out query parameters that are already covered by the route
                    var queryParameters = GetApiSpecQueryParameters(compositeSection, compositeResource, route).Where(qp => routeParameters.All(rp => rp.Name != qp.Name));
                    var parameters = routeParameters
                        .Concat(new[]
                        {
                            StandardParameters.Offset,
                            StandardParameters.Limit,
                            StandardParameters.Fields,
                            StandardParameters.QueryExpression,
                        })
                        .Concat(queryParameters)
                        .Concat(GetResourcePropertiesByExample(compositeSection, compositeResource))
                        .ToList();

                    operationsSpecsForViewModel.Add(new ApiOperationSpec
                    {
                        Method = "GET",
                        Nickname = string.Format(
                            "get{0}{1}",
                            compositeResource.PluralName,
                            operationNicknameSuffix),
                        Type = "array",
                        Items = new ItemsSpec { Ref = compositeResource.Name.ToCamelCase() },
                        Summary = string.Format("Retrieves resources using the associated {0} resource's identifier (using the \"Get By Example\" pattern).", resourceName),
                        Notes = "This GET operation provides access to resources using a filtered \"Get By Example\" pattern.",
                        Parameters = parameters,
                        ResponseMessages = new List<ApiResponseMessageSpec>
                        {
                            StandardResponses.OkForCollection(compositeResource),
                            StandardResponses.BadRequest,
                            StandardResponses.Unauthorized,
                            StandardResponses.Forbidden,
                            StandardResponses.NotFound,
                            StandardResponses.InternalServerError,
                        }
                    });
                }
            }

            return operationsSpecsForViewModel.ToArray();
        }

        private IReadOnlyList<ApiParameterSpec> GetResourcePropertiesByKey(CompositeSection compositeSection, Resource compositeResource)
        {
            var currentResourceBaseAndSpec = compositeSection.ResourceDetails.First(resourceSpec =>
               resourceSpec.CompositeResource == compositeResource);

            var fullResourceClass = compositeSection.FullResourceModel.GetResourceByName(currentResourceBaseAndSpec.BaseResource);
            var metadataPropertiesForCurrentResourceByName = fullResourceClass.IdentifyingProperties
                .Select(p => compositeSection.QueryStringPropertyFactory(compositeResource, p))
                .ToList();

            var apiParameterSpecsForResource = new List<ApiParameterSpec>();

            AddParameterSpecsForResource(metadataPropertiesForCurrentResourceByName, apiParameterSpecsForResource);

            return apiParameterSpecsForResource;
        }

        private IReadOnlyList<ApiParameterSpec> GetResourcePropertiesByExample(CompositeSection compositeSection,
            Resource compositeResource)
        {
            var currentResourceBaseAndSpec = compositeSection.ResourceDetails.First(resourceSpec =>
                resourceSpec.CompositeResource == compositeResource);

            var fullResourceClass = compositeSection.FullResourceModel.GetResourceByName(currentResourceBaseAndSpec.BaseResource);
            var metadataPropertiesForCurrentResourceByName = fullResourceClass.AllProperties
                .Select(p => compositeSection.QueryStringPropertyFactory(compositeResource, p))
                .ToList();

            var apiParameterSpecsForResource = new List<ApiParameterSpec>();

            AddParameterSpecsForResource(metadataPropertiesForCurrentResourceByName, apiParameterSpecsForResource);

            return apiParameterSpecsForResource;
        }

        private void AddParameterSpecsForResource(IReadOnlyList<ResourceProperty> metadataPropertiesForCurrentResourceByName,
            List<ApiParameterSpec> apiParameterSpecsForResource)
        {
            apiParameterSpecsForResource.AddRange(metadataPropertiesForCurrentResourceByName.Select(prop => new ApiParameterSpec
            {
                ParamType = "query",
                Name = prop.JsonPropertyName,
                Type = prop.PropertyType.ToSwagger(),
                Description = prop.Description,
                Required = false
            }));
        }

        private bool RouteAppliesToResource(XElement routeDefinition, Resource resource,
            IReadOnlyList<ResourceDetails> sectionResourcesAndSpecifications)
        {
            string routeTemplateToTest = routeDefinition.AttributeValue("relativeRouteTemplate");

            bool routeAndSpecificationMatch = sectionResourcesAndSpecifications
                // Find definition for current resource where specification is defined
                .Where(r => r.CompositeResource.Equals(resource) && r.Specification != null)
                // Get the specification parameters
                .SelectMany(r => r.Specification.Elements("Parameter"))
                // Match this route if any of the parameters are present
                .Any(p => routeTemplateToTest.Contains("{" + p.AttributeValue("name") + "}"));

            // ASSUMPTION: Routes will only contain a single GUID parameter. If there are multiple parameters 
            // in the route, then the logic will have to be rewritten to drive off the route template's contents
            // to identify all the parameters that need to be defined in the specification, and fail to match the
            // route if any of the route's parameters aren't defined in the resource specification.

            return routeAndSpecificationMatch;
        }

        private bool IsDefaultRoute(XElement route)
        {
            return (route == _defaultCollectionRoute || route == _defaultItemRoute);
        }

        private string GetApiSpecPath(CompositeSection section, Resource resource, XElement routeDefinition)
        {
            string template = routeDefinition.AttributeValue("relativeRouteTemplate");

            return "/" + section.CategoryName + template.Replace("{compositeName}", resource.PluralName.ToCamelCase());
        }

        private IReadOnlyList<ApiParameterSpec> GetApiSpecPathParameters(CompositeSection section, Resource resource, XElement routeDefinition)
        {
            string path = GetApiSpecPath(section, resource, routeDefinition);

            var matches = Regex.Matches(path, @"\{(?<Parameter>[\w\.]+)\}");

            return
                (from m in matches.Cast<Match>()
                 select new ApiParameterSpec
                 {
                     Name = m.Groups["Parameter"].Value.ToSwaggerIdentifier(),
                     Type = "string",
                     ParamType = "path",
                     Required = true,
                 })
                 .ToList();
        }

        private IReadOnlyList<ApiParameterSpec> GetApiSpecQueryParameters(CompositeSection section, Resource resource, XElement routeDefinition)
        {
            var resourceSpecification = section
                .ResourceDetails
                .Where(x => x.CompositeResource == resource)
                .Select(x => x.Specification)
                .Single();

            // Return an empty list if no specification is present
            if (resourceSpecification == null)
                return new List<ApiParameterSpec>();

            var queryParameters = resourceSpecification.Elements("Parameter")
                                 .Where(e => e.AttributeValue("queryable") == "true")
                                 .ToList();

            return
                (from p in queryParameters
                 select new ApiParameterSpec
                 {
                     Name = p.AttributeValue("name").ToSwaggerIdentifier(),
                     Type = GetSwaggerTypeForQueryParameter(section.FullResourceModel.GetResourceByName(resource.Name), p),
                     ParamType = "query",
                     Description = p.AttributeValue("description"),
                     Required = false,
                 })
                 .ToList();
        }

        private string GetSwaggerTypeForQueryParameter(Resource resource, XElement parameter)
        {
            string swaggerType = null;

            _resourceJoinPathExpressionProcessor.ProcessPath(
                resource,
                parameter.AttributeValue("name"),
                parameter.AttributeValue("filterPath"),
                (prop, part) => swaggerType = prop.PropertyType.ToSwagger());

            if (swaggerType == null)
                throw new Exception(
                    string.Format(
                        "Unable to determine Swagger type for parameter '{0}' with filter path expression '{1}'.",
                        parameter.AttributeValue("name"),
                        parameter.AttributeValue("filterPath")));

            return swaggerType;
        }

        private string GetOperationSpecNicknameSuffix(CompositeSection section, Resource resource, XElement routeDefinition)
        {
            var parametersNames =
                GetApiSpecPathParameters(section, resource, routeDefinition)
                    .Select(p => p.Name.GetSwaggerOperationNicknameContribution())
                    .ToList();

            if (parametersNames.Count == 1)
                return "By" + parametersNames.First().ToMixedCase();

            if (parametersNames.Count == 0)
                return "All";

            throw new NotSupportedException("Building operation nickname suffixes where more than 1 parameter exists in the route definition is not supported.");
        }

        private class ProfileGenerationContext
        {
            public StandardizedResourceProfileData StandardizedResourceProfileData { get; set; }
            public IList<string> DerivedResources { get; set; }
        }

        private ProfileGenerationContext GetProfileGenerationContext(
            StandardizedResourceProfileData standardizedResourceProfileData)
        {
            var resource = standardizedResourceProfileData.ResolvedResource;
            var profileName = standardizedResourceProfileData.ProfileName;

            var profileGenerationContexts = new ProfileGenerationContext
                                            {
                                                StandardizedResourceProfileData =
                                                    standardizedResourceProfileData,
                                                DerivedResources = new List<string> {null}
                                            };

            if (resource == null || !resource.IsBase()
                || _profileResourceDataByProfileName.All(p => p.Key != profileName))
            {
                return profileGenerationContexts;
            }
            
            var derivedResources = GetDerivedResourcesInProfileForResource(profileName, resource);

            derivedResources.ForEach(
                r => profileGenerationContexts.DerivedResources.Add(r.ResolvedResource.Name));

            profileGenerationContexts.DerivedResources =
                profileGenerationContexts.DerivedResources.OrderByDescending(r => r)
                                         .ToList();

            return profileGenerationContexts;
        }

        public SwaggerMetadataViewModel GetViewModel()
        {
            // Create resources section
            var resourcesSectionResources = _standardizedResourceProfileData
                    .Where(r =>
                        !r.ResolvedResource.IsAbstract()
                        // Everything but Types and Descriptors
                        && !EdFiTypeEntitySpecification.IsEdFiTypeEntity(r.ResolvedResource.Name)
                        && !EdFiDescriptorEntitySpecification.IsEdFiDescriptorEntity(r.ResolvedResource.Name)).ToList();

            var sections = new List<Tuple<string, IEnumerable<StandardizedResourceProfileData>>>();

            if (resourcesSectionResources.Any(x => !x.HasProfileDefinition))
            {
                sections.Add(new Tuple<string, IEnumerable<StandardizedResourceProfileData>>("resources", resourcesSectionResources));
                sections.AddRange(GetLookups());
            }
            else
            {
                sections = resourcesSectionResources
                    .GroupBy(p => p.ProfileName, p => p, (key, g) => new Tuple<string, IEnumerable<StandardizedResourceProfileData>>(key, g))
                    .ToList();
            }

            var swaggerSections =
                sections.Select(sectionNameAndResources =>
                    new SwaggerSectionViewModel
                    {
                        SectionName = sectionNameAndResources.Item1,
                        ResourceListing = CreateResourceListing(sectionNameAndResources.Item2),
                        ApiDeclarations =
                            sectionNameAndResources.Item2
                            .Select(GetProfileGenerationContext)
                                .SelectMany(r => r.DerivedResources.Select(dr =>
                                    CreateApiDeclaration(r.StandardizedResourceProfileData, new List<ApiSpec>
                                    {
                                        CreateApiSpec(r.StandardizedResourceProfileData.ResolvedResource, "/{0}", new []
                                        {
                                            // GET (All)
                                            CreateApiOperation(
                                                CreateGetAllOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Readable,
                                                dr),

                                            // GET (By Example)
                                            CreateApiOperation(
                                                CreateGetByExampleOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Readable,
                                                dr),

                                            // GET (By Key)
                                            CreateApiOperation(
                                                CreateGetByKeyOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Readable,
                                                dr),

                                            // POST
                                            CreateApiOperation(
                                                CreatePostOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Writable,
                                                dr)
                                        }),
                                        CreateApiSpec(r.StandardizedResourceProfileData.ResolvedResource, "/{0}/{{id}}", new []
                                        {
                                            // GET (By Id)
                                            CreateApiOperation(
                                                CreateGetByIdOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Readable,
                                                dr),

                                            // PUT
                                            CreateApiOperation(
                                                CreatePutOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Writable,
                                                dr),

                                            // DELETE
                                            CreateApiOperation(
                                                CreateDeleteOperation,
                                                r.StandardizedResourceProfileData,
                                                ContentTypeUsage.Writable,
                                                dr)
                                        })
                                    }, DateTime.Today.Year, includeETag: true, includeServiceErrorAndLink: sectionNameAndResources.Item1 != "descriptors")))
                                    .ToList()
                    }).ToArray();

            return new SwaggerMetadataViewModel { SwaggerSections = swaggerSections };
        }

        private ApiOperationSpec CreateApiOperation(
            Func<StandardizedResourceProfileData, string, ApiOperationSpec> apiOperation,
            StandardizedResourceProfileData standardizedResourceProfileData,
            ContentTypeUsage contentTypeUsage,
            string generationContext)
        {
            return !standardizedResourceProfileData.HasContentTypeUsage(contentTypeUsage)
                    && !DerivedResourceInProfileHasContentTypeUsage(standardizedResourceProfileData, contentTypeUsage)
                ? null
                : apiOperation(standardizedResourceProfileData, generationContext);
        }

        private IEnumerable<Tuple<string, IEnumerable<StandardizedResourceProfileData>>> GetLookups()
        {
            var typesSectionResources = _standardizedResourceProfileData
                    .Where(r => !r.ResolvedResource.IsAbstract() && EdFiTypeEntitySpecification.IsEdFiTypeEntity(r.ResolvedResource.Name));

            var descriptorsSectionResources = _standardizedResourceProfileData
                    .Where(r => !r.ResolvedResource.IsAbstract() && EdFiDescriptorEntitySpecification.IsEdFiDescriptorEntity(r.ResolvedResource.Name));

            return new[]
            {
                Tuple.Create("types", typesSectionResources),
                Tuple.Create("descriptors", descriptorsSectionResources)
            };
        }

        private List<StandardizedResourceProfileData> GetDerivedResourcesInProfileForResource(string profileName, Resource resource)
        {
            if (resource == null
                || !resource.IsBase()
                || _profileResourceDataByProfileName.All(p => p.Key != profileName))
            {
                return new List<StandardizedResourceProfileData>();
            }

            var profileResources = _profileResourceDataByProfileName
                .First(p => p.Key == profileName).Value;

            return profileResources.Where(r => r.ResolvedResource.IsDerivedFrom(resource))
                                   .Select(r => r)
                                   .ToList();
        }

        private StandardizedResourceProfileData GetBaseResourceInProfileForResource(string profileName, Resource resource)
        {

            if (resource == null
                || resource.IsBase()
                || _profileResourceDataByProfileName.All(p => p.Key != profileName))
            {
                return null;
            }

            var profileResources = _profileResourceDataByProfileName
                .First(p => p.Key == profileName)
                .Value;

            return profileResources
                .FirstOrDefault(r => resource.IsDerivedFrom(r.ResolvedResource));
        }

        private bool DerivedResourceInProfileHasContentTypeUsage(
            StandardizedResourceProfileData standardizedResourceProfileData,
            ContentTypeUsage? contentTypeUsage)
        {
            return GetDerivedResourcesInProfileForResource(
                standardizedResourceProfileData.ProfileName,
                standardizedResourceProfileData.ResolvedResource)
                    .Any(r => r.HasContentTypeUsage(contentTypeUsage));
        }

        private ApiDeclaration CreateApiDeclaration
            (StandardizedResourceProfileData standardizedResourceProfileData,
            List<ApiSpec> apiSpecs,
            int? schoolYear = null,
            bool includeETag = false,
            bool includeServiceErrorAndLink = true,
            bool createCompositeModel = false)
        {
            foreach (var apiSpec in apiSpecs)
            {
                apiSpec.Operations = apiSpec.Operations.Where(o => o != null)
                                            .ToList();
            }

            if (!apiSpecs.Any())
            {
                throw new Exception(string.Format("There are no defined routes that match the composite {0} parameter specifications",
                    standardizedResourceProfileData.ResolvedResource.Name));
            }

            return new ApiDeclaration
            {
                ApiVersion = "2.0",
                SwaggerVersion = "1.2",
                BasePath = "%BASE_URL%/api/v2.0" + (schoolYear == null ? string.Empty : "/" + schoolYear),
                ResourcePath = "/" + standardizedResourceProfileData.ResolvedResource.PluralName.ToCamelCase(),
                Produces = new List<string> { "application/json" },
                Apis = apiSpecs,
                Models = !createCompositeModel
                    ? CreateModels(standardizedResourceProfileData, includeETag, includeServiceErrorAndLink)
                    : CreateCompositeModels(standardizedResourceProfileData.ResolvedResource, includeETag)
            };
        }

        private ModelDictionarySpec CreateModels(StandardizedResourceProfileData standardizedResourceProfileData, bool includeETag = false, bool includeServiceErrorAndLink = true)
        {
            var intialDictionary = standardizedResourceProfileData.ResolvedResource.AllProperties
                .Any(property => property.PropertyName == "Id")
                    ? new Dictionary<string, ModelPropertySpec>
                        {
                            {"id",
                                new ModelPropertySpec
                                {
                                    Type = "string",
                                    Description = "The unique identifier of the resource.",
                                    Required = true,
                                }
                            }
                        }
                    : new Dictionary<string, ModelPropertySpec>();

            if (standardizedResourceProfileData.HasProfileDefinition)
            {
                var derivedResourceHasContentTypeUsage =
                    DerivedResourceInProfileHasContentTypeUsage(
                        standardizedResourceProfileData,
                        ContentTypeUsage.Readable);

                var readableModelSpec = standardizedResourceProfileData.HasContentTypeUsage(ContentTypeUsage.Readable)
                    || DerivedResourceInProfileHasContentTypeUsage(standardizedResourceProfileData, ContentTypeUsage.Readable)
                    ? GetModelSpecDictionary(
                        standardizedResourceProfileData,
                        ContentTypeUsage.Readable,
                        includeETag,
                        includeServiceErrorAndLink,
                        derivedResourceHasContentTypeUsage)
                    : new Dictionary<string, ModelSpec>();

                derivedResourceHasContentTypeUsage =
                    DerivedResourceInProfileHasContentTypeUsage(
                        standardizedResourceProfileData,
                        ContentTypeUsage.Writable);

                var writableModelSpec = standardizedResourceProfileData.HasContentTypeUsage(ContentTypeUsage.Writable)
                    || derivedResourceHasContentTypeUsage
                    ? GetModelSpecDictionary(
                        standardizedResourceProfileData,
                        ContentTypeUsage.Writable,
                        includeETag,
                        includeServiceErrorAndLink,
                        derivedResourceHasContentTypeUsage)
                    : new Dictionary<string, ModelSpec>();

                return new ModelDictionarySpec(
                    readableModelSpec.Concat(writableModelSpec)
                                     .GroupBy(s => s.Key)
                                     .Select(s => s.First())
                                     .ToDictionary(r => r.Key, r => r.Value));
            }

            return new ModelDictionarySpec(
                GetModelSpecDictionary(
                    standardizedResourceProfileData,
                    contentTypeUsage: null,
                    includeETag: includeETag,
                    includeServiceErrorAndLink: includeServiceErrorAndLink));
        }

        private Dictionary<string, ModelSpec> GetModelSpecDictionary(
            StandardizedResourceProfileData standardizedResourceProfileData,
            ContentTypeUsage? contentTypeUsage,
            bool includeETag = false,
            bool includeServiceErrorAndLink = true,
            bool derivedResourceHasContentTypeUsage = false)
        {
            // Composite resources are not present within the resource model
            var resource = _resourceModelProvider.GetResourceModel()
                                                 .GetAllResources()
                                                 .Any(
                                                     r =>
                                                         r.Name
                                                         == standardizedResourceProfileData
                                                             .ResolvedResource.Name)
                ? _resourceModelProvider.GetResourceModel()
                                        .GetResourceByName(
                                            standardizedResourceProfileData.ResolvedResource.Name)
                : standardizedResourceProfileData.ResolvedResource;

            var filteredResource =
                standardizedResourceProfileData.ResourceForContentTypeUsage(contentTypeUsage)
                ?? resource;

            var baseResourceInProfile =
                GetBaseResourceInProfileForResource(
                    standardizedResourceProfileData.ProfileName,
                    resource);

            var initialDictionary = resource.AllProperties.Any(property => property.PropertyName == "Id")
                ? new Dictionary<string, ModelPropertySpec>
                    {
                        {"id",
                            new ModelPropertySpec
                            {
                                Type = "string",
                                Description = "The unique identifier of the resource.",
                                Required = true,
                            }
                        }
                    }
                : new Dictionary<string, ModelPropertySpec>();

            var modelSpecDictionary =
                (new Dictionary<string, ModelSpec>
                {
                    {
                        ResourceName(filteredResource, contentTypeUsage),
                        new ModelSpec
                        {
                            ID = ResourceName(filteredResource, contentTypeUsage),
                            Properties =
                                initialDictionary
                                .Concat(FilteredReferencesToRender(filteredResource, resource, derivedResourceHasContentTypeUsage).ToDictionary(
                                    x => x.PropertyName.ToCamelCase(),
                                    x => new ModelPropertySpec
                                    {
                                        Type = x.ReferenceTypeName,
                                        Required = x.IsRequired,
                                        Description = ReferenceDescription(x)
                                    }
                                ))
                                .Concat(filteredResource.UsiAwareUnifiedAllProperties()
                                                        .OrderBy(x => x.PropertyName)
                                                        .Where(p =>
                                                                    (derivedResourceHasContentTypeUsage && p.IsIdentifying)
                                                                    || ( !derivedResourceHasContentTypeUsage
                                                                        && p.PropertyName != "Id" &&
                                                                            (p.IsLocallyDefined
                                                                                || p.IsDirectLookup
                                                                                || (p.IsIdentifying && p.Parent.IsDerived))))
                                                        .ToDictionary(
                                    p => p.JsonPropertyName,
                                    p => new ModelPropertySpec
                                    {
                                        Type = PropertyType(p),
                                        Required = !p.PropertyType.IsNullable && !p.IsServerAssigned,
                                        Description = PropertyDescription(p)
                                    }))
                                .Concat(filteredResource.EmbeddedObjects.Where(e => !derivedResourceHasContentTypeUsage).ToDictionary(
                                    o => o.JsonPropertyName,
                                    o => new ModelPropertySpec
                                    {
                                        Type = EmbeddedObjectDescription(o, contentTypeUsage),
                                        Required = false,
                                        Description = o.ObjectType.Description.ScrubForSwagger(),
                                    }))
                                .Concat(filteredResource.Collections.Where(c => !derivedResourceHasContentTypeUsage).ToDictionary(
                                    c =>  CreateCollectionKey(standardizedResourceProfileData, c),
                                    c => new ModelPropertySpec
                                    {
                                        Type = "array",
                                        Items = new ItemsSpec
                                        {
                                            Ref = CollectionRefName(c, filteredResource, contentTypeUsage),
                                        },
                                        Required = c.Association.IsRequiredCollection,
                                        Description = CollectionDescription(c),
                                    }))
                                .Concat(includeETag ? (new Dictionary<string, ModelPropertySpec>
                                {
                                    {"_etag",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Description = "A unique system-generated value that identifies the version of the resource.",
                                            Required = false,
                                        }
                                    }
                                }) : new Dictionary<string, ModelPropertySpec>())
                                .ToDictionary(x => x.Key, x => x.Value)
                        }
                    }
                })
                .Concat(FilteredReferencesToRender(filteredResource, resource, derivedResourceHasContentTypeUsage).GroupBy(r => r.ReferenceTypeName).Select(g => g.First()).ToDictionary(
                    t => t.ReferenceTypeName.ToCamelCase(),
                    t => new ModelSpec
                    {
                        // Dont Forget we changed this to match non profiles version, only returns middle param
                        ID = t.ReferenceTypeName.ToCamelCase(),
                        Properties = (t.ReferenceTypeProperties.ToDictionary(
                            p => p.JsonPropertyName,
                            p => new ModelPropertySpec
                            {
                                Type = PropertyType(p),
                                Required = true,
                                Description = PropertyDescription(p)
                            }))
                            .Concat((new Dictionary<string, ModelPropertySpec>
                            {
                                {"link",
                                    new ModelPropertySpec
                                    {
                                        Type = "link",
                                        Description =
                                            string.Format(
                                                "Represents a hyperlink to the related {0} resource.",
                                                t.ReferencedResourceName.ToCamelCase()),
                                        Required = false,
                                    }
                                }
                            }))
                            .ToDictionary(x => x.Key, x => x.Value)
                    }))
                .Concat(resource.AllContainedItemTypes
                                .GroupBy(it => it.Name).Select(g => g.First())
                                .ToDictionary(
                    t => ContainedItemTypeName(t, resource, contentTypeUsage),
                    t => new ModelSpec
                    {
                        ID = ContainedItemTypeName(t, resource, contentTypeUsage),
                        Properties = ReferencesToRenderForResourceChildItem(filteredResource, t, derivedResourceHasContentTypeUsage).ToDictionary(
                                x => x.PropertyName.ToCamelCase(),
                                x => new ModelPropertySpec
                                {
                                    Type = x.ReferenceTypeName.ToCamelCase(),
                                    Required = x.IsRequired,
                                    Description = ReferenceDescription(x)
                                })
                                .Concat(PropertiesToRenderForResourceChildItem(t, derivedResourceHasContentTypeUsage).Where(p =>
                                            (p.IsLocallyDefined || p.IsDirectLookup)
                                            && ((filteredResource.AllContainedItemTypes.SelectMany(i => PropertiesToRenderForResourceChildItem(i, derivedResourceHasContentTypeUsage)).Contains(p, ModelComparers.ResourceProperty))
                                            || (p.IsIdentifying)))
                                            .ToDictionary(
                                    p => p.JsonPropertyName,
                                    p => new ModelPropertySpec
                                    {
                                        Type = PropertyType(p),
                                        Required = !p.PropertyType.IsNullable,
                                        Description = p.Description.ScrubForSwagger(),
                                    }))
                                .Concat(t.EmbeddedObjects
                                         .Where(o => (!derivedResourceHasContentTypeUsage && filteredResource.AllContainedItemTypes.SelectMany(i => i.EmbeddedObjects).Contains(o, ModelComparers.EmbeddedObject)))
                                         .ToDictionary(
                                    o => o.JsonPropertyName,
                                    o => new ModelPropertySpec
                                    {
                                        Type = o.ObjectType.Name,
                                        Required = false,
                                        Description = o.ObjectType.Description.ScrubForSwagger(),
                                    }))
                               .Concat(t.Collections
                                            .Where(c => (!derivedResourceHasContentTypeUsage && filteredResource.AllContainedItemTypes.SelectMany(i => i.Collections).Contains(c, ModelComparers.Collection)))
                                            .ToDictionary(
                                    c => c.JsonPropertyName,
                                    c => new ModelPropertySpec
                                    {
                                        Type = "array",
                                        Items = new ItemsSpec { Ref = CollectionRefName(c, filteredResource, contentTypeUsage) },
                                        Required = c.Association.IsRequiredCollection,
                                        Description = CollectionDescription(c),
                                    }))
                                .ToDictionary(x => x.Key, x => x.Value)
                    }))
                .Concat(resource.AllContainedItemTypes.SelectMany(i => ReferencesToRenderForResourceChildItem(filteredResource, i, derivedResourceHasContentTypeUsage)).GroupBy(r => r.ReferenceTypeName).Select(g => g.First()).ToDictionary(
                    t => t.ReferenceTypeName.ToCamelCase(),
                    t => new ModelSpec
                    {
                        ID = t.ReferenceTypeName.ToCamelCase(),
                        Properties = t.ReferenceTypeProperties.Where(p => p.IsIdentifying)
                                            .ToDictionary(
                                    p => p.JsonPropertyName,
                                    p => new ModelPropertySpec
                                    {
                                        Type = PropertyType(p),
                                        Required = !p.PropertyType.IsNullable && !p.IsServerAssigned || UniqueIdSpecification.IsUniqueId(p.JsonPropertyName),
                                        Description = PropertyDescription(p)
                                    })
                                    .Concat((new Dictionary<string, ModelPropertySpec>
                                    {
                                        {"link",
                                            new ModelPropertySpec
                                            {
                                                Type = "link",
                                                Description =
                                                    string.Format(
                                                        "Represents a hyperlink to the related {0} resource.",
                                                        t.ReferencedResourceName.ToCamelCase()),
                                                Required = false,
                                            }
                                        }
                                    }))
                                .ToDictionary(x => x.Key, x => x.Value)
                    }))
                .GroupBy(g => g.Key).Select(g => g.First())
                .ToDictionary(x => x.Key, x => x.Value);

            if (includeServiceErrorAndLink)
            {
                modelSpecDictionary =
                modelSpecDictionary
                    .Concat(new Dictionary<string, ModelSpec>
                    {
                        {
                            "webServiceError",
                            new ModelSpec
                            {
                                ID = "webServiceError",
                                Properties = new Dictionary<string, ModelPropertySpec>
                                {
                                    {
                                        "message",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The \"user-friendly\" error message."
                                        }
                                    },
                                    {
                                        "exceptionMessage",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The system-generated exception message."
                                        }
                                    },
                                    {
                                        "exceptionType",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The type of the exception."
                                        }
                                    },
                                    {
                                        "stackTrace",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The server-side stack trace (only available in DEBUG builds)."
                                        }
                                    },
                                }
                            }
                        },
                        {
                            "link",
                            new ModelSpec
                            {
                                ID = "link",
                                Properties = new Dictionary<string, ModelPropertySpec>
                                {
                                    {
                                        "rel",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "Describes the nature of the relationship to the referenced resource."
                                        }
                                    },
                                    {
                                        "href",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The URL to the related resource."
                                        }
                                    }
                                }
                            }
                        }
                    }
                ).ToDictionary(x => x.Key, x => x.Value);
            }

            if (baseResourceInProfile != null)
            {
                var inheritedReferences = filteredResource.UnifiedReferences().Where(r => r.IsInherited || r.IsRequired);
                var inheritedProperties = filteredResource.UsiAwareUnifiedAllProperties().Where(p => p.IsInherited).OrderBy(x => x.PropertyName);
                var inheritedEmbeddedObjects = filteredResource.EmbeddedObjects.Where(o => o.IsInherited);
                var inheritedCollections = filteredResource.Collections.Where(c => c.IsInherited);

                return modelSpecDictionary.Concat(
                (new Dictionary<string, ModelSpec>
                {
                    {
                        BaseResourceName(baseResourceInProfile.ResolvedResource, resource, contentTypeUsage),
                        new ModelSpec
                        {
                            ID = BaseResourceName(baseResourceInProfile.ResolvedResource, resource, contentTypeUsage),
                            Properties =
                                initialDictionary
                                .Concat(inheritedReferences.ToDictionary(
                                    x => x.PropertyName.ToCamelCase(),
                                    x => new ModelPropertySpec
                                    {
                                        Type = x.ReferenceTypeName,
                                        Required = x.IsRequired,
                                        Description = ReferenceDescription(x)
                                    }
                                ))
                                .Concat(inheritedProperties.Where(p =>
                                            p.PropertyName != "Id" &&
                                                (p.IsLocallyDefined
                                                    || p.IsDirectLookup
                                                    || (p.IsIdentifying && p.Parent.IsDerived)))
                                            .ToDictionary(
                                    p => p.JsonPropertyName,
                                    p => new ModelPropertySpec
                                    {
                                        Type = PropertyType(p),
                                        Required = !p.PropertyType.IsNullable && !p.IsServerAssigned,
                                        Description = PropertyDescription(p)
                                    }))
                                .Concat(inheritedEmbeddedObjects.ToDictionary(
                                    o => o.JsonPropertyName,
                                    o => new ModelPropertySpec
                                    {
                                        Type = EmbeddedObjectDescription(o, contentTypeUsage),
                                        Required = false,
                                        Description = o.ObjectType.Description.ScrubForSwagger(),
                                    }))
                                .Concat(inheritedCollections.ToDictionary(
                                    c => CreateCollectionKey(standardizedResourceProfileData, c),
                                    c => new ModelPropertySpec
                                    {
                                        Type = "array",
                                        Items = new ItemsSpec
                                        {
                                            Ref = CollectionRefName(c, filteredResource, contentTypeUsage),
                                        },
                                        Required = c.Association.IsRequiredCollection,
                                        Description = CollectionDescription(c),
                                    }))
                                .Concat(includeETag ? (new Dictionary<string, ModelPropertySpec>
                                {
                                    {
                                        "_etag",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Description = "A unique system-generated value that identifies the version of the resource.",
                                            Required = false,
                                        }
                                    }
                                }) : new Dictionary<string, ModelPropertySpec>())
                                .ToDictionary(x => x.Key, x => x.Value)
                        }
                    }
                })).ToDictionary(x => x.Key, x => x.Value);
            }

            return modelSpecDictionary;
        }

        private static string CreateCollectionKey(StandardizedResourceProfileData standardizedResourceProfileData, Collection collection)
        {
            if (standardizedResourceProfileData.HasProfileDefinition)
            {
                return collection.IsDerivedEntityATypeEntity() 
                    ? collection.ItemType.PluralName.ToCamelCase() 
                    : collection.JsonPropertyName;
            }

            // this is the the same logic as InheritedCollections found in ResourceCollectionRenderer.cs
            return collection.IsDerivedEntityATypeEntity() && collection.IsInherited
                ? collection.Association.OtherEntity.PluralName.ToCamelCase()
                : collection.JsonPropertyName;
        }

        private ModelDictionarySpec CreateCompositeModels(Resource resource, bool includeETag = false)
        {
            var initialDictionary = resource.AllPropertyByName.ContainsKey("id")
                ? new Dictionary<string, ModelPropertySpec>
                    {
                        {
                            "id",
                            new ModelPropertySpec
                            {
                                Type = "string",
                                Description = "The unique identifier of the resource.",
                                Required = true,
                            }
                        }
                    }
                : new Dictionary<string, ModelPropertySpec>();

            return new ModelDictionarySpec(
                (new Dictionary<string, ModelSpec>
                {
                    {
                        resource.Name.ToCamelCase(),
                        new ModelSpec
                        {
                            ID = resource.Name.ToCamelCase(),
                            Properties =
                                initialDictionary
                                .Concat(resource.References.ToDictionary(
                                    x => x.PropertyName.ToCamelCase(),
                                    x => new ModelPropertySpec
                                    {
                                        Type = CreateCompositeChildModelTypeName(resource, x.ReferenceTypeName, x.ReferencedResource),
                                        Required = x.IsRequired,
                                        Description =
                                            string.Format(
                                                "A reference to the related {0} resource.",
                                                x.ReferencedResourceName)
                                    }
                                ))
                                .Concat(resource.Properties.Where(p =>
                                            p.PropertyName != "Id" &&
                                                (p.IsLocallyDefined
                                                    || p.IsDirectLookup
                                                    || (p.IsIdentifying && p.Parent.IsDerived)))
                                            .ToDictionary(
                                    p => p.JsonPropertyName,
                                    p => new ModelPropertySpec
                                    {
                                        Type = p.PropertyType.ToSwagger(),
                                        Required = !p.PropertyType.IsNullable && !p.IsServerAssigned,
                                        Description = p.Description.ScrubForSwagger(),
                                    }))
                                .Concat(resource.EmbeddedObjects.ToDictionary(
                                    o => o.JsonPropertyName,
                                    o => new ModelPropertySpec
                                    {
                                        Type = CreateCompositeChildModelTypeName(resource, o.ObjectType.Name, o.Parent),
                                        Required = false,
                                        Description = o.ObjectType.Description.ScrubForSwagger(),
                                    }))
                                .Concat(resource.Collections.ToDictionary(
                                    c => c.JsonPropertyName,
                                    c => new ModelPropertySpec
                                    {
                                        Type = "array",
                                        Items = new ItemsSpec
                                        {
                                            Ref = CreateCompositeChildModelTypeName(resource, c.ItemType.Name, c.Parent),
                                        },
                                        Required = false,
                                        Description =
                                            string.Format(
                                                "An unordered collection of {0}.  {1}",
                                                c.ItemType.PluralName.ToCamelCase(),
                                                c.ItemType.Description.ScrubForSwagger()),
                                    }))
                                .Concat(includeETag ? (new Dictionary<string, ModelPropertySpec>
                                {
                                    {"_etag",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Description = "A unique system-generated value that identifies the version of the resource.",
                                            Required = false,
                                        }
                                    }
                                }) : new Dictionary<string, ModelPropertySpec>())
                                .ToDictionary(x => x.Key, x => x.Value)
                        }
                    }
                })
                .Concat(resource.AllContainedReferences.ToDictionary(
                    t => CreateCompositeChildModelTypeName(resource, t.ReferenceTypeName, t.ReferencedResource),
                    t => new ModelSpec
                    {
                        ID = CreateCompositeChildModelTypeName(resource, t.ReferenceTypeName, t.ReferencedResource),
                        Properties = (t.ReferenceTypeProperties.ToDictionary(
                            p => p.JsonPropertyName,
                            p => new ModelPropertySpec
                            {
                                Type = p.PropertyType.ToSwagger(),
                                Required = true,
                                Description = p.Description.ScrubForSwagger(),
                            }))
                            .Concat((new Dictionary<string, ModelPropertySpec>
                            {
                                {"link",
                                    new ModelPropertySpec
                                    {
                                        Type = "link",
                                        Description =
                                            string.Format(
                                                "Represents a hyperlink to the related {0} resource.",
                                                t.ReferencedResourceName.ToCamelCase()),
                                        Required = false,
                                    }
                                }
                            }))
                            .ToDictionary(x => x.Key, x => x.Value)
                    }))
                .Concat(resource.AllContainedItemTypes.ToDictionary(
                    t => CreateCompositeChildModelTypeName(resource, t.Name, t.Parent),
                    t => new ModelSpec
                    {
                        ID = CreateCompositeChildModelTypeName(resource, t.Name, t.Parent),
                        Properties =
                            t.References.ToDictionary(
                                x => x.PropertyName.ToCamelCase(),
                                x => new ModelPropertySpec
                                {
                                    Type = CreateCompositeChildModelTypeName(resource, x.ReferenceTypeName, x.Parent),
                                    Required = x.IsRequired,
                                    Description =
                                            string.Format(
                                                "A reference to the related {0} resource.",
                                                x.ReferencedResourceName)
                                }
                                )
                                .Concat(t.Properties.Where(p =>
                                            (p.IsLocallyDefined || p.IsDirectLookup))
                                            .ToDictionary(
                                    p => p.JsonPropertyName,
                                    p => new ModelPropertySpec
                                    {
                                        Type = p.PropertyType.ToSwagger(),
                                        Required = !p.PropertyType.IsNullable,
                                        Description = p.Description.ScrubForSwagger(),
                                    }))
                                .Concat(t.EmbeddedObjects.ToDictionary(
                                    o => o.JsonPropertyName,
                                    o => new ModelPropertySpec
                                    {
                                        Type = CreateCompositeChildModelTypeName(resource, o.ObjectType.Name, o.Parent),
                                        Required = false,
                                        Description = o.ObjectType.Description.ScrubForSwagger(),
                                    }))
                                .Concat(t.Collections.ToDictionary(
                                    c => c.JsonPropertyName,
                                    c => new ModelPropertySpec
                                    {
                                        Type = "array",
                                        Items = new ItemsSpec { Ref = CreateCompositeChildModelTypeName(resource, c.ItemType.Name, c.Parent) },
                                        Required = false,
                                        Description =
                                            string.Format(
                                                "An unordered collection of {0}.  {1}",
                                                c.ItemType.PluralName.ToCamelCase(),
                                                c.ItemType.Description.ScrubForSwagger()),
                                    }))
                                .ToDictionary(x => x.Key, x => x.Value)
                    }))
                .Concat(new Dictionary<string, ModelSpec>
                    {
                        {
                            "webServiceError",
                            new ModelSpec
                            {
                                ID = "webServiceError",
                                Properties = new Dictionary<string, ModelPropertySpec>
                                {
                                    {
                                        "message",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The \"user-friendly\" error message."
                                        }
                                    },
                                    {
                                        "exceptionMessage",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The system-generated exception message."
                                        }
                                    },
                                    {
                                        "exceptionType",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The type of the exception."
                                        }
                                    },
                                    {
                                        "stackTrace",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The server-side stack trace (only available in DEBUG builds)."
                                        }
                                    },
                                }
                            }
                        },
                        {
                            "link",
                            new ModelSpec
                            {
                                ID = "link",
                                Properties = new Dictionary<string, ModelPropertySpec>
                                {
                                    {
                                        "rel",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "Describes the nature of the relationship to the referenced resource."
                                        }
                                    },
                                    {
                                        "href",
                                        new ModelPropertySpec
                                        {
                                            Type = "string",
                                            Required = false,
                                            Description = "The URL to the related resource."
                                        }
                                    }
                                }
                            }
                        }
                    }
                )
                .ToDictionary(x => x.Key, x => x.Value));
        }

        // As there are two scenarios for which we render a profile filtered resource's references, we need to iterate over
        // unfiltered resource references and test for:
        // 1. filteredResource references contain it 
        // 2. reference.IsExclusiveForIdentifyingColumns()
        private IEnumerable<Reference> FilteredReferencesToRender(ResourceClassBase filteredResource, ResourceClassBase resource, bool derivedResourceHasContentTypeUsage = false)
        {
            if (derivedResourceHasContentTypeUsage)
                return resource.UnifiedReferences()
                           .Where(r => r.IsExclusiveForIdentifyingColumns());

            return resource.UnifiedReferences()
                           .Where(r => filteredResource.UnifiedReferences().Contains(r, ModelComparers.Reference)
                                       || r.IsExclusiveForIdentifyingColumns());
        }

        private IEnumerable<Reference> ReferencesToRenderForResourceChildItem(Resource filteredResource, ResourceChildItem resourceChildItem, bool derivedResourceHasContentTypeUsage = false)
        {
            return resourceChildItem.UnifiedReferences()
                                    .Where(r => (filteredResource.AllContainedItemTypes
                                                         .SelectMany(t => t.UnifiedReferences())
                                                                           .Contains(r, ModelComparers.Reference) && !derivedResourceHasContentTypeUsage) || r.IsExclusiveForIdentifyingColumns())
                                    .GroupBy(t => t.ReferenceTypeName).Select(g => g.First());
        }

        private IEnumerable<ResourceProperty> PropertiesToRenderForResourceChildItem(ResourceChildItem resourceChildItem, bool derivedResourceHasContentTypeUsage)
        {
            if (derivedResourceHasContentTypeUsage)
                return resourceChildItem.Properties
                    .Where(p => p.IsIdentifying);

            return resourceChildItem.Properties
                .Union(resourceChildItem.GetAllExtensionProperties().Where(p => !p.IsIdentifying));
        }

        private string ResourceName(Resource resource, ContentTypeUsage? contentTypeUsage)
        {
            return contentTypeUsage == null
                ? string.Format("{0}", CompositeTermInflector.MakeSingular(resource.Name)).ToCamelCase()
                : string.Format("{0}_{1}", CompositeTermInflector.MakeSingular(resource.Name), contentTypeUsage).ToCamelCase();
        }

        private string BaseResourceName(Resource baseResource, Resource resource, ContentTypeUsage? contentTypeUsage)
        {
            return contentTypeUsage == null
                ? string.Format("{0}_{1}",
                    baseResource.Name,
                    CompositeTermInflector.MakeSingular(resource.Name)).ToCamelCase()
                : string.Format("{0}_{1}_{2}",
                    baseResource.Name,
                    CompositeTermInflector.MakeSingular(resource.Name),
                    contentTypeUsage).ToCamelCase();
        }

        private string PropertyType(ResourceProperty resourceProperty)
        {
            return resourceProperty.IsLookup
                || UniqueIdSpecification.IsUniqueId(resourceProperty.JsonPropertyName)
                    ? "string"
                    : resourceProperty.PropertyType.ToSwagger();
        }

        private string PropertyDescription(ResourceProperty resourceProperty)
        {
            return UniqueIdSpecification.IsUniqueId(resourceProperty.JsonPropertyName)
                ? string.Format(
                    "A unique alphanumeric code assigned to a {0}.",
                    UniqueIdSpecification.RemoveUniqueIdSuffix(
                                             resourceProperty.JsonPropertyName
                                                             .ScrubForSwagger())
                                                             .ToLower())
                : resourceProperty.Description
                                  .ScrubForSwagger();
        }

        private string ReferenceDescription(Reference reference)
        {
            return string.Format(
                "A reference to the related {0} resource.",
                reference.ReferencedResourceName);
        }

        private string EmbeddedObjectDescription(EmbeddedObject embeddedObject, ContentTypeUsage? contentTypeUsage)
        {
            return contentTypeUsage == null
                ? string.Format("{0}", embeddedObject.ObjectType.Name)
                : string.Format("{0}_{1}", embeddedObject.ObjectType.Name, contentTypeUsage);
        }

        private string CollectionDescription(Collection collection)
        {
            return string.Format(
                "An unordered collection of {0}.  {1}",
                collection.ItemType.PluralName.ToCamelCase(),
                collection.ItemType.Description.ScrubForSwagger()).Trim();
        }

        private string CollectionRefName(Collection collection, Resource resource, ContentTypeUsage? contentTypeUsage)
        {
            return contentTypeUsage == null
                    ? collection.ItemType.Name.ToCamelCase()
                    : string.Format("{0}_{1}", collection.IsDerivedFrom(resource)
                        ? CreateChildModelTypeName(resource, collection.ItemType.Name, collection.Parent)
                        : collection.ItemType.Name, contentTypeUsage).ToCamelCase();
        }

        private string ContainedItemTypeName(ResourceChildItem resourceChildItem, Resource resource, ContentTypeUsage? contentTypeUsage)
        {
            return contentTypeUsage == null
                    ? resourceChildItem.Name.ToCamelCase()
                    : string.Format("{0}_{1}", resourceChildItem.IsDerivedFrom(resource)
                        ? CreateChildModelTypeName(resource, resourceChildItem.Name, resourceChildItem.Parent)
                        : resourceChildItem.Name, contentTypeUsage).ToCamelCase();
        }

        private static string CreateChildModelTypeName(Resource resource, string childTypeName, ResourceClassBase containingResource)
        {
            if (containingResource is IHasParent)
            {
                return string.Join(
                    "_",
                    new[] { childTypeName }.Concat(
                    (containingResource as IHasParent)
                        .GetLineage()
                        .Select(x => x.Name.ToCamelCase())));
            }

            return string.Format("{0}_{1}",
                childTypeName,
                resource.Name);
        }

        private static string CreateCompositeChildModelTypeName(Resource resource, string childTypeName, ResourceClassBase containingResource)
        {
            if (containingResource is IHasParent)
            {
                return string.Join(
                    "_",
                    (containingResource as IHasParent)
                        .GetLineage()
                        .Select(x => x.Name.ToCamelCase())
                        .Concat(new[] { childTypeName.ToCamelCase() }));
            }

            return string.Format("{0}_{1}",
                resource.Name.ToCamelCase(),
                childTypeName.ToCamelCase());
        }

        private static ApiOperationSpec CreateDeleteOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            return new ApiOperationSpec
            {
                Method = "DELETE",
                Nickname = string.Format("delete{0}ById", standardizedResourceProfileData.ResolvedResource.Name),
                Type = "void",
                Summary = "Deletes an existing resource using the resource identifier.",
                Notes = "The DELETE operation is used to delete an existing resource by identifier.  If the resource doesn't exist, an error will result (the resource will not be found).",
                Parameters = new[]
                {
                    new ApiParameterSpec
                    {
                        ParamType = "path",
                        Name = "id",
                        Description = "A resource identifier specifying the resource to be deleted.",
                        Type = "string",
                        Required = true,
                    },
                    new ApiParameterSpec
                    {
                        ParamType = "header",
                        Name = "If-Match",
                        Description = "The ETag header value used to prevent the DELETE from removing a resource modified by another consumer.",
                        Type = "string",
                        Required = false,
                        AllowMultiple = false,
                    },
                },
                ResponseMessages = new[]
                {
                    new ApiResponseMessageSpec
                    {
                        Code = 202,
                        Message = "The request has accepted by the service, but processing has not yet completed due to current system load. Processing may still fail due to violation of referential integrity requirements."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 204,
                        Message = "The resource was successfully deleted."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 400,
                        Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 401,
                        Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 403,
                        Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 404,
                        Message = "The resource could not be found.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 409,
                        Message = "Conflict.  The request cannot be completed because it would result in an invalid state.  See the response body for details."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 412,
                        Message = "The resource's current server-side ETag value does not match the supplied If-Match header value in the request.  This indicates the resource has been modified by another consumer.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 500,
                        Message = "An unhandled error occurred on the server. See the response body for details.",
                        ResponseModel = "webServiceError",
                    },
                }
            };
        }

        private ApiOperationSpec CreatePutOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = _resourceModelProvider.GetResourceModel().GetResourceByName(standardizedResourceProfileData.ResolvedResource.Name);
            var resourceNameWithContext = string.IsNullOrWhiteSpace(generationContext) ? resource.Name : string.Format("{0}_{1}", resource.Name, generationContext);

            var type =
            !standardizedResourceProfileData.HasProfileDefinition
                ? resourceNameWithContext.ToCamelCase()
                : string.Format("{0}_{1}", resourceNameWithContext, ContentTypeUsage.Writable).ToCamelCase();

            return new ApiOperationSpec
            {
                Method = "PUT",
                Nickname = string.Format("put{0}", resource.Name),
                Type = "void",
                Summary = "Updates or creates a resource based on the resource identifier.",
                Notes = "The PUT operation is used to update or create a resource by identifier.  If the resource doesn't exist, the resource will be created using that identifier.  Additionally, natural key values cannot be changed using this operation, and will not be modified in the database.  If the resource \"id\" is provided in the JSON body, it will be ignored as well.",
                Consumes = new[]
                {
                    OperationMimeType(standardizedResourceProfileData, ContentTypeUsage.Writable)
                },
                Parameters = new[]
                {
                    new ApiParameterSpec
                    {
                        ParamType = "path",
                        Name = "id",
                        Description = "A resource identifier specifying the resource to be updated.",
                        Type = "string",
                        Required = true,
                    },
                    new ApiParameterSpec
                    {
                        ParamType = "header",
                        Name = "If-Match",
                        Description = "The ETag header value used to prevent the PUT from updating a resource modified by another consumer.",
                        Type = "string",
                        Required = false,
                    },
                    new ApiParameterSpec
                    {
                        ParamType = "body",
                        Name = resource.Name.ToCamelCase(),
                        Description = string.Format("The JSON representation of the \"{0}\" resource to be updated.", resource.Name.ToCamelCase()),
                        Type = type,
                        Required = true,
                    },
                },
                ResponseMessages = new[]
                {
                    new ApiResponseMessageSpec
                    {
                        Code = 201,
                        Message = "The resource was created.  An ETag value is available in the ETag header, and the location of the resource is available in the Location header of the response."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 202,
                        Message = "The resource has been validated and accepted by the service, but processing has not yet completed due to current system load. Processing may still fail due to violation of referential integrity requirements."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 204,
                        Message = "The resource was updated.  An updated ETag value is available in the ETag header of the response."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 400,
                        Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 401,
                        Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 403,
                        Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 404,
                        Message = "The resource could not be found.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 409,
                        Message = "Conflict.  The request cannot be completed because it would result in an invalid state.  See the response body for details."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 412,
                        Message = "The resource's current server-side ETag value does not match the supplied If-Match header value in the request.  This indicates the resource has been modified by another consumer.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 500,
                        Message = "An unhandled error occurred on the server. See the response body for details.",
                        ResponseModel = "webServiceError",
                    },
                }
            };
        }

        private ApiOperationSpec CreateGetByIdOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = _resourceModelProvider.GetResourceModel().GetResourceByName(standardizedResourceProfileData.ResolvedResource.Name);
            var resourceNameWithContext = string.IsNullOrWhiteSpace(generationContext) ? resource.Name : string.Format("{0}_{1}", resource.Name, generationContext);

            var type =
            !standardizedResourceProfileData.HasProfileDefinition
                ? resourceNameWithContext.ToCamelCase()
                : string.Format("{0}_{1}", resourceNameWithContext, ContentTypeUsage.Readable).ToCamelCase();

            return new ApiOperationSpec
            {
                Method = "GET",
                Nickname = string.Format("get{0}ById", resource.PluralName),
                Type = type,
                Summary = "Retrieves a specific resource using the resource's identifier (using the \"Get By Id\" pattern).",
                Notes = "This GET operation retrieves a resource by the specified resource identifier.",
                Produces = new[]
                {
                    OperationMimeType(standardizedResourceProfileData, ContentTypeUsage.Readable)
                },
                Parameters = new[]
                {
                    new ApiParameterSpec
                    {
                        ParamType = "path",
                        Name = "id",
                        Description = "A resource identifier specifying the resource to be retrieved.",
                        Type = "string",
                        Required = true,
                    },
                    new ApiParameterSpec
                    {
                        ParamType = "header",
                        Name = "If-None-Match",
                        Description = "The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.",
                        Type = "string",
                        Required = false,
                    },
                },
                ResponseMessages = new[]
                {
                    new ApiResponseMessageSpec
                    {
                        Code = 200,
                        ResponseModel = resource.Name.ToCamelCase(),
                        Message = "The resource was successfully retrieved.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 304,
                        Message = "The resource's current server-side ETag value matched the If-None-Match header value supplied with the request indicating the resource has not been modified.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 400,
                        Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 401,
                        Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 403,
                        Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 404,
                        Message = "The resource could not be found.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 500,
                        Message = "An unhandled error occurred on the server. See the response body for details.",
                        ResponseModel = "webServiceError",
                    },
                }
            };
        }

        private static ApiSpec CreateApiSpec(Resource resource, string resourcePathFormatSpecifier, ApiOperationSpec[] operations)
        {
            string path = string.Format(resourcePathFormatSpecifier, resource.PluralName.ToCamelCase());

            var matches = Regex.Matches(path, @"\{(?<Parameter>[\w\.]+)\}");

            // Convert the embedded parameters to JSON-friendly representations
            foreach (Match match in matches.Cast<Match>().Reverse())
            {
                path = path.Replace(
                    match.Groups["Parameter"].Value,
                    match.Groups["Parameter"].Value.ToSwaggerIdentifier());
            }

            return new ApiSpec
            {
                Path = path,
                Description = resource.Description.ScrubForSwagger(),
                Operations = operations
            };
        }

        private ApiOperationSpec CreatePostOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = _resourceModelProvider.GetResourceModel()
                                                 .GetResourceByName(standardizedResourceProfileData.ResolvedResource.Name);

            string resourceNameWithContext = string.IsNullOrWhiteSpace(generationContext)
                ? resource.Name
                : string.Format("{0}_{1}", resource.Name, generationContext);

            var type =
            !standardizedResourceProfileData.HasProfileDefinition
                ? resourceNameWithContext.ToCamelCase()
                : string.Format("{0}_{1}", resourceNameWithContext, ContentTypeUsage.Writable).ToCamelCase();

            return new ApiOperationSpec
            {
                Method = "POST",
                Nickname = string.Format("post{0}", resource.PluralName),
                Type = "void",
                Summary = "Creates or updates resources based on the natural key values of the supplied resource.",
                Notes = "The POST operation can be used to create or update resources. In database terms, this is often referred to as an \"upsert\" operation (insert + update).  Clients should NOT include the resource \"id\" in the JSON body because it will result in an error (you must use a PUT operation to update a resource by \"id\"). The web service will identify whether the resource already exists based on the natural key values provided, and update or create the resource appropriately.",
                Consumes = new[]
                {
                    OperationMimeType(standardizedResourceProfileData, ContentTypeUsage.Writable)
                },
                Parameters = new[]
                {
                    new ApiParameterSpec
                    {
                        ParamType = "body",
                        Name = resource.Name.ToCamelCase(),
                        Description =
                            string.Format(
                                "The JSON representation of the \"{0}\" resource to be created or updated.",
                                resource.Name.ToCamelCase()),
                        Type = type,
                        Required = true,
                    }
                },
                ResponseMessages = new[]
                {
                    new ApiResponseMessageSpec
                    {
                        Code = 201,
                        Message = "The resource was created.  An ETag value is available in the ETag header, and the location of the resource is available in the Location header of the response."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 202,
                        Message = "The resource has been validated and accepted by the service, but processing has not yet completed due to current system load. Processing may still fail due to violation of referential integrity requirements."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 204,
                        Message = "The resource was updated.  An updated ETag value is available in the ETag header of the response."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 400,
                        Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 401,
                        Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 403,
                        Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 409,
                        Message = "Conflict.  The request cannot be completed because it would result in an invalid state.  See the response body for details."
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 412,
                        Message = "The resource's current server-side ETag value does not match the supplied If-Match header value in the request.  This indicates the resource has been modified by another consumer.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 500,
                        Message = "An unhandled error occurred on the server. See the response body for details.",
                        ResponseModel = "webServiceError",
                    },
                }
            };
        }

        private ApiOperationSpec CreateGetByKeyOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = _resourceModelProvider.GetResourceModel()
                                                 .GetResourceByName(standardizedResourceProfileData.ResolvedResource.Name);

            string resourceNameWithContext = string.IsNullOrWhiteSpace(generationContext)
                ? resource.Name
                : string.Format("{0}_{1}", resource.Name, generationContext);

            var type =
            !standardizedResourceProfileData.HasProfileDefinition
                ? resourceNameWithContext.ToCamelCase()
                : string.Format("{0}_{1}", resourceNameWithContext, ContentTypeUsage.Readable).ToCamelCase();

            return new ApiOperationSpec
            {
                Method = "GET",
                Nickname = string.Format("get{0}ByKey", resource.Name),
                Type = type,
                Summary = "Retrieves a specific resource using the values of the resource's natural key (using the \"Get By Key\" pattern).",
                Notes = "This GET operation provides access to resources using the \"Get by Key\" search pattern. The values of the natural key of the resource must be fully specified, and the service will return the matching result (if it exists).",
                Produces = new[]
                {
                    OperationMimeType(standardizedResourceProfileData, ContentTypeUsage.Readable)
                },
                Parameters = resource.AllRequestProperties()
                                     .Where(p => p.IsIdentifying)
                                     .OrderBy(x => x.PropertyName)
                                     .Select(p =>
                    new ApiParameterSpec
                    {
                        ParamType = "query",
                        Name = p.JsonPropertyName,
                        Type = PropertyType(p),
                        Description = PropertyDescription(p),
                        Required = true,
                    }).Concat(new[]
                    {
                        new ApiParameterSpec
                        {
                            ParamType = "header",
                            Name = "If-None-Match",
                            Type = "string",
                            Description = "The previously returned ETag header value, used here to prevent the unnecessary data transfer of an unchanged resource.",
                            Required = false,
                        }
                    }).ToArray(),
                ResponseMessages = new[]
                {
                    new ApiResponseMessageSpec
                    {
                        Code = 200,
                        ResponseModel = resource.Name.ToCamelCase(),
                        Message = "The resource was successfully retrieved.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 304,
                        Message = "The resource's current server-side ETag value matched the If-None-Match header value supplied with the request indicating the resource has not been modified.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 400,
                        Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 401,
                        Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 403,
                        Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 404,
                        Message = "The resource could not be found.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 500,
                        Message = "An unhandled error occurred on the server. See the response body for details.",
                        ResponseModel = "webServiceError",
                    },
                }
            };
        }

        private ApiOperationSpec CreateGetByExampleOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = _resourceModelProvider.GetResourceModel()
                                                 .GetResourceByName(standardizedResourceProfileData.ResolvedResource.Name);

            string itemsSpecRef = ItemsSpecRef(standardizedResourceProfileData, generationContext);

            return new ApiOperationSpec
            {
                Method = "GET",
                Nickname = string.Format("get{0}ByExample", resource.PluralName),
                Type = "array",
                Items = new ItemsSpec { Ref = itemsSpecRef },
                Summary = "Retrieves resources matching values of an example resource (using the \"Get By Example\" pattern).",
                Notes = "This GET operation provides access to resources using the \"Get by Example\" search pattern.  The values of any properties of the resource that are specified will be used to return all matching results (if it exists).",
                Produces = new[]
                {
                    OperationMimeType(standardizedResourceProfileData, ContentTypeUsage.Readable)
                },
                Parameters = ((new[]
                {
                    new ApiParameterSpec
                    {
                        ParamType = "query",
                        Name = "offset",
                        Description = "Indicates how many items should be skipped before returning results.",
                        Type = "integer",
                        Required = false,
                    },
                    new ApiParameterSpec
                    {
                        ParamType = "query",
                        Name = "limit",
                        Description = "Indicates the maximum number of items that should be returned in the results (defaults to 25).",
                        Type = "integer",
                        Required = false,
                        Minimum = 1,
                        Maximum = 250,
                    }
                }).Concat(
                    resource.AllRequestProperties().Select(p =>
                        new ApiParameterSpec
                        {
                            ParamType = "query",
                            Name = p.JsonPropertyName,
                            Description = PropertyDescription(p),
                            Type = PropertyType(p),
                            Required = false,
                        }
                        )
                    )).ToArray(),
                ResponseMessages = new[]
                {
                    new ApiResponseMessageSpec
                    {
                        Code = 200,
                        ResponseModel = "array",
                        Items = new ItemsSpec { Ref = itemsSpecRef },
                        Message = "The resource(s) were successfully retrieved.  If no instances are found will return an empty collection.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 400,
                        Message = "Bad Request.  The request was invalid and cannot be completed.  See the response body for specific validation errors.  This will typically be an issue with the query parameters or their values.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 401,
                        Message = "Unauthorized.  The request requires authentication.  The OAuth bearer token was either not provided or is invalid.  The operation may succeed once authenication has been successfully completed.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 403,
                        Message = "Forbidden.  The request cannot be completed in the current authorization context.  Contact your administrator if you believe this operation should be allowed.",
                    },
                    new ApiResponseMessageSpec
                    {
                        Code = 500,
                        Message = "An unhandled error occurred on the server. See the response body for details.",
                        ResponseModel = "webServiceError",
                    },
                }
            };
        }

        private ApiOperationSpec CreateGetAllOperation(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = _resourceModelProvider.GetResourceModel().GetResourceByName(standardizedResourceProfileData.ResolvedResource.Name);
            var itemsSpecRef = ItemsSpecRef(standardizedResourceProfileData, generationContext);

            return new ApiOperationSpec
            {
                Method = "GET",
                Nickname = string.Format("get{0}All", resource.PluralName),
                Type = "array",
                Items = new ItemsSpec { Ref = itemsSpecRef },
                Summary = "Retrieves resources based with paging capabilities (using the \"Get All\" pattern).",
                Notes = "This GET operation provides access to resources using the \"Get All\" pattern. In this version of the API there is support for paging.",
                Parameters = new[]
                {
                    StandardParameters.Offset,
                    StandardParameters.Limit
                },
                Produces = new[]
                {
                    OperationMimeType(standardizedResourceProfileData, ContentTypeUsage.Readable)
                },
                ResponseMessages = new List<ApiResponseMessageSpec>
                {
                    StandardResponses.OkForCollection(itemsSpecRef),
                    StandardResponses.BadRequest,
                    StandardResponses.Unauthorized,
                    StandardResponses.Forbidden,
                    StandardResponses.InternalServerError,
                }
            };
        }

        private static ResourceListing CreateResourceListing(IEnumerable<StandardizedResourceProfileData> standardizedResourceProfileData)
        {
            string profileName = standardizedResourceProfileData.FirstOrDefault().ProfileName;
            return new ResourceListing
            {
                ApiVersion = "2.0",
                SwaggerVersion = "1.2",
                BasePath = "%BASE_URL%/metadata/%SECTION%/api-docs",
                Apis = standardizedResourceProfileData
                            .Select(r =>
                                new ApiDeclarationLink
                                {
                                    Path = "/" + r.ResolvedResource.PluralName.ToCamelCase(),
                                    Description = r.ResolvedResource.Description.ScrubForSwagger(),
                                })
                            .ToList(),
                Info = new InfoSpec
                {
                    Title = profileName == null ? "Ed-Fi Operational Data Store API" : string.Format("Ed-Fi Operational Data Store API (Profile: {0})", profileName),
                    Description = "The Ed-Fi ODS API enables applications to read and write education data stored in an Ed-Fi ODS through a secure REST interface. The Ed-Fi ODS API supports both transactional and bulk modes of operation.",
                    TermsOfServiceUrl = "",
                    Contact = "",
                    License = "",
                    LicenseUrl = "http://www.ed-fi.org/license/"
                }
            };
        }

        private static ResourceListing CreateResourceListing(string categoryName, string categoryDisplayName, IReadOnlyList<Resource> resources)
        {
            return new ResourceListing
            {
                ApiVersion = "2.0",
                SwaggerVersion = "1.2",
                BasePath = "%BASE_URL%/metadata/%SECTION%/api-docs",
                Apis = resources
                            .Select(r =>
                                new ApiDeclarationLink
                                {
                                    Path = string.Format("/{0}", r.PluralName.ToCamelCase()),
                                    Description = r.Description.ScrubForSwagger(),
                                })
                            .ToList(),
                Info = new InfoSpec
                {
                    Title = string.Format("Ed-Fi Operational Data Store API ({0})", categoryDisplayName),
                    Description = "The Ed-Fi ODS API enables applications to read and write education data stored in an Ed-Fi ODS through a secure REST interface. The Ed-Fi ODS API supports both transactional and bulk modes of operation.",
                    TermsOfServiceUrl = "",
                    Contact = "",
                    License = "",
                    LicenseUrl = "http://www.ed-fi.org/license/"
                }
            };
        }

        private static string CreateRouteDefinitionResourcePath(XElement routeDefinition)
        {
            return routeDefinition.AttributeValue("relativeRouteTemplate")
                    .TrimStart('/');
        }

        private static string OperationMimeType(StandardizedResourceProfileData standardizedResourceProfileData, ContentTypeUsage contentTypeUsage)
        {
            return !standardizedResourceProfileData.HasProfileDefinition
                ? "application/json"
                : ProfilesContentTypeHelper.CreateContentType(
                    standardizedResourceProfileData.ResolvedResource.Name,
                    standardizedResourceProfileData.ProfileName,
                    contentTypeUsage);
        }

        private string ItemsSpecRef(StandardizedResourceProfileData standardizedResourceProfileData, string generationContext)
        {
            var resource = standardizedResourceProfileData.ResolvedResource;

            var itemsSpecRef =
            !standardizedResourceProfileData.HasProfileDefinition
                ? string.IsNullOrWhiteSpace(generationContext)
                    ? resource.Name.ToCamelCase()
                    : string.Format("{0}_{1}", resource.Name, generationContext).ToCamelCase()

                : string.IsNullOrWhiteSpace(generationContext)
                    ? string.Format("{0}_{1}", resource.Name.ToCamelCase(), ContentTypeUsage.Readable)
                    : string.Format("{0}_{1}_{2}", resource.Name.ToCamelCase(), generationContext, ContentTypeUsage.Readable);

            return itemsSpecRef;
        }

        private IReadOnlyList<StandardizedResourceProfileData> GetStandardizedResourceProfileData(
            IProfileResourceNamesProvider profileResourceNamesProvider,
            IProfileResourceModelProvider profileResourceModelProvider)
        {
                return profileResourceNamesProvider
                    .GetProfileResourceNames()
                    .Select(prn => prn.ProfileName)
                    .Distinct()
                    .Select(
                        profileResourceModelProvider.GetProfileResourceModel)
                    .SelectMany(
                        prm => prm.ResourceByName.Values.Select(
                            pct =>
                                new StandardizedResourceProfileData
                                {
                                    Readable = pct.Readable,
                                    Writable = pct.Writable,
                                    ProfileName = prm.ProfileName
                                }))
                    .ToList();
        }

        private IReadOnlyList<StandardizedResourceProfileData> GetStandardizedResourceProfileData()
        {
            return _resourceModelProvider.GetResourceModel()
                                         .GetAllResources()
                                         .Where(r => !r.IsAbstract())
                                         .OrderBy(x => x.Name)
                                         .Select(
                                             resource =>
                                                 new StandardizedResourceProfileData
                                                 {
                                                     Readable = resource,
                                                     Writable = resource,
                                                     ProfileName = null
                                                 })
                                         .OrderBy(x => x.ResolvedResource.Name)
                                         .ToList();
        }

        private class StandardizedResourceProfileData
        {
            public string ProfileName { get; set; }

            public bool HasProfileDefinition
            {
                get
                {
                    return ProfileName != null;
                }
            }

            public bool HasContentTypeUsage(ContentTypeUsage? contentTypeUsage)
            {
                return (contentTypeUsage == ContentTypeUsage.Readable && Readable != null)
                    || (contentTypeUsage == ContentTypeUsage.Writable && Writable != null)
                    || !HasProfileDefinition;
            }

            public Resource ResourceForContentTypeUsage(ContentTypeUsage? contentTypeUsage)
            {
                return contentTypeUsage == null || !HasContentTypeUsage(contentTypeUsage)
                    ? null
                    : contentTypeUsage == ContentTypeUsage.Readable
                        ? Readable
                        : Writable;
            }

            public Resource Readable { get; set; }
            public Resource Writable { get; set; }
            public Resource ResolvedResource { get { return Readable ?? Writable; } }
        }
    }

    /// <summary>
    /// Provides a wrapper method around <see cref="Enumerable.ToDictionary"/> to provide details about 
    /// the duplicate keys encountered (for troubleshooting purposes).
    /// </summary>
    public static class EnumerableHelper
    {
        /// <summary>
        /// Wraps the standard LINQ ToDictionary extension method to provide additional details about
        /// the keys that were to be added to the dictionary.
        /// </summary>
        /// <typeparam name="TSource"></typeparam>
        /// <typeparam name="TKey"></typeparam>
        /// <typeparam name="TElement"></typeparam>
        /// <param name="source"></param>
        /// <param name="keySelector"></param>
        /// <param name="elementSelector"></param>
        /// <returns></returns>
        public static Dictionary<TKey, TElement> ToDictionary<TSource, TKey, TElement>(
            this IEnumerable<TSource> source,
            Func<TSource, TKey> keySelector,
            Func<TSource, TElement> elementSelector)
        {
            try
            {
                return Enumerable.ToDictionary(source, keySelector, elementSelector);
            }
            catch (Exception ex)
            {
                string keys = string.Join("\r\n    ",
                    from s in source
                    group s by keySelector(s) into g
                    where g.Count() > 1
                    select g.Key);

                throw new Exception(string.Format(
                    "Duplicate key encountered in ToDictionary invocation: \r\n    {0}",
                    keys), ex);
            }
        }
    }
}