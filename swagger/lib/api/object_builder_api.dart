// @dart=2.9
part of swagger.api;

class ObjectBuilderApi {
  final ApiClient apiClient;

  ObjectBuilderApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  /// create_object_from_object_model_object_builder_create_object_post
  ///
  /// Create Object From Object Model
  Future<Object> createObjectFromObjectModelObjectBuilderCreateObjectPost(
      ObjectBuilderModel body,
      {String authorization,
      String contentType}) async {
    Object postBody = body;

    // verify required params are set
    if (body == null) {
      throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path =
        "/object-builder/create-object".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["Content-Type"] = "";

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Object') as Object;
    } else {
      return null;
    }
  }

  /// get_a_object_object_builder_get_a_object_get
  ///
  /// Get A Object
  Future<Object> getAObjectObjectBuilderGetAObjectGet(String objectId,
      {String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (objectId == null) {
      throw new ApiException(400, "Missing required param: objectId");
    }

    // create path and map variables
    String path = "/object-builder/get-a-object".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "object_id", objectId));
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Object') as Object;
    } else {
      return null;
    }
  }

  /// get_all_available_objects_object_builder_get_all_objects_get
  ///
  /// Get All Available Objects
  Future<Object> getAllAvailableObjectsObjectBuilderGetAllObjectsGet(
      {String authorization}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path =
        "/object-builder/get-all-objects".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Object') as Object;
    } else {
      return null;
    }
  }

  /// get_load_schema_object_model_object_builder_load_schema_object_model_get
  ///
  /// Get Load Schema Object Model
  Future<Object> getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet(
      String schemaId,
      {String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (schemaId == null) {
      throw new ApiException(400, "Missing required param: schemaId");
    }

    // create path and map variables
    String path = "/object-builder/load-schema-object-model"
        .replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(
        _convertParametersForCollectionFormat("", "schema_id", schemaId));
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Object') as Object;
    } else {
      return null;
    }
  }
}
