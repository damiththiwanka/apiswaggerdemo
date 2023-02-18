part of swagger.api;



class DeviceManagerApi {
  final ApiClient apiClient;

  DeviceManagerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// get_variables_device_manager_get_variables_post
  ///
  /// Get Variables
  Future<Object> getVariablesDeviceManagerGetVariablesPost(String protocol, GetVariableDataType body, { String authorization, String contentType }) async {
    Object postBody = body;

    // verify required params are set
    if(protocol == null) {
     throw new ApiException(400, "Missing required param: protocol");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/device-manager/get-variables".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "protocol", protocol));
    headerParams["Authorization"] = authorization;
headerParams["Content-Type"] ="";

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// set_variables_device_manager_set_variables_post
  ///
  /// Set Variables
  Future<Object> setVariablesDeviceManagerSetVariablesPost({ String authorization }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/device-manager/set-variables".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
}
