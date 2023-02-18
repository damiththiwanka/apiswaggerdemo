part of swagger.api;



class ChargingStationManagerApi {
  final ApiClient apiClient;

  ChargingStationManagerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// create_charging_station_schema_charging_station_manager_create_charging_station_schema_post
  ///
  /// Create Charging Station Schema
  Future<Object> createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost(ChargingStationSchemaModel body, { String authorization, String contentType }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/charging-station-manager/create-charging-station-schema".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Content-Type"] = "";

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
  /// get_all_charging_station_charging_station_manager_get_all_charging_stations_with_evses_get
  ///
  /// Get All Charging Station
  Future<Object> getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet({ String authorization }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/charging-station-manager/get-all-charging-stations-with-evses".replaceAll("{format}","json");

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
                                             'GET',
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
  /// get_charging_station_devices_charging_station_manager_get_charging_station_devices_get
  ///
  /// Get Charging Station Devices
  Future<Object> getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet(String chargingStationId, { String authorization }) async {
    Object postBody = null;

    // verify required params are set
    if(chargingStationId == null) {
     throw new ApiException(400, "Missing required param: chargingStationId");
    }

    // create path and map variables
    String path = "/charging-station-manager/get-charging-station-devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "charging_station_id", chargingStationId));
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
                                             'GET',
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
  /// get_charging_station_eves_list_charging_station_manager_get_charging_station_eves_list_get
  ///
  /// Get Charging Station Eves List
  Future<Object> getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet(String chargingStationId, { String authorization }) async {
    Object postBody = null;

    // verify required params are set
    if(chargingStationId == null) {
     throw new ApiException(400, "Missing required param: chargingStationId");
    }

    // create path and map variables
    String path = "/charging-station-manager/get-charging-station-eves-list".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "charging_station_id", chargingStationId));
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
                                             'GET',
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
  /// get_connector_devices_charging_station_manager_get_connector_devices_get
  ///
  /// Get Connector Devices
  Future<Object> getConnectorDevicesChargingStationManagerGetConnectorDevicesGet(String connectorId, { String authorization }) async {
    Object postBody = null;

    // verify required params are set
    if(connectorId == null) {
     throw new ApiException(400, "Missing required param: connectorId");
    }

    // create path and map variables
    String path = "/charging-station-manager/get-connector-devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "connector_id", connectorId));
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
                                             'GET',
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
  /// get_evse_connector_list_charging_station_manager_get_eves_connector_list_get
  ///
  /// Get Evse Connector List
  Future<Object> getEvseConnectorListChargingStationManagerGetEvesConnectorListGet(String evseId, { String authorization }) async {
    Object postBody = null;

    // verify required params are set
    if(evseId == null) {
     throw new ApiException(400, "Missing required param: evseId");
    }

    // create path and map variables
    String path = "/charging-station-manager/get-eves-connector-list".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "evse_id", evseId));
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
                                             'GET',
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
  /// get_evse_devices_charging_station_manager_get_eves_devices_get
  ///
  /// Get Evse Devices
  Future<Object> getEvseDevicesChargingStationManagerGetEvesDevicesGet(String evseId, { String authorization }) async {
    Object postBody = null;

    // verify required params are set
    if(evseId == null) {
     throw new ApiException(400, "Missing required param: evseId");
    }

    // create path and map variables
    String path = "/charging-station-manager/get-eves-devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "evse_id", evseId));
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
                                             'GET',
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
  /// register_charging_station_charging_station_manager_register_charging_station_post
  ///
  /// Register Charging Station
  Future<Object> registerChargingStationChargingStationManagerRegisterChargingStationPost(RegisterChargingStation body, { String authorization, String contentType }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/charging-station-manager/register-charging-station".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Content-Type"] = "";

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
