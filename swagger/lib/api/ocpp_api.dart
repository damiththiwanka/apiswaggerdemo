// @dart=2.9
part of swagger.api;

class OCPPApi {
  final ApiClient apiClient;

  OCPPApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// reset_ocpp_reset_post
  ///
  /// Reset
  Future<Object> resetOcppResetPost({String authorization}) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/ocpp/reset".replaceAll("{format}", "json");

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
}
