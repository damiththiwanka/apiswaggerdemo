# swagger.api.ChargingStationManagerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost**](ChargingStationManagerApi.md#createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost) | **POST** /charging-station-manager/create-charging-station-schema | create_charging_station_schema_charging_station_manager_create_charging_station_schema_post
[**getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet**](ChargingStationManagerApi.md#getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet) | **GET** /charging-station-manager/get-all-charging-stations-with-evses | get_all_charging_station_charging_station_manager_get_all_charging_stations_with_evses_get
[**getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet**](ChargingStationManagerApi.md#getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet) | **GET** /charging-station-manager/get-charging-station-devices | get_charging_station_devices_charging_station_manager_get_charging_station_devices_get
[**getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet**](ChargingStationManagerApi.md#getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet) | **GET** /charging-station-manager/get-charging-station-eves-list | get_charging_station_eves_list_charging_station_manager_get_charging_station_eves_list_get
[**getConnectorDevicesChargingStationManagerGetConnectorDevicesGet**](ChargingStationManagerApi.md#getConnectorDevicesChargingStationManagerGetConnectorDevicesGet) | **GET** /charging-station-manager/get-connector-devices | get_connector_devices_charging_station_manager_get_connector_devices_get
[**getEvseConnectorListChargingStationManagerGetEvesConnectorListGet**](ChargingStationManagerApi.md#getEvseConnectorListChargingStationManagerGetEvesConnectorListGet) | **GET** /charging-station-manager/get-eves-connector-list | get_evse_connector_list_charging_station_manager_get_eves_connector_list_get
[**getEvseDevicesChargingStationManagerGetEvesDevicesGet**](ChargingStationManagerApi.md#getEvseDevicesChargingStationManagerGetEvesDevicesGet) | **GET** /charging-station-manager/get-eves-devices | get_evse_devices_charging_station_manager_get_eves_devices_get
[**registerChargingStationChargingStationManagerRegisterChargingStationPost**](ChargingStationManagerApi.md#registerChargingStationChargingStationManagerRegisterChargingStationPost) | **POST** /charging-station-manager/register-charging-station | register_charging_station_charging_station_manager_register_charging_station_post


# **createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost**
> Object createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost(body, authorization, contentType)

create_charging_station_schema_charging_station_manager_create_charging_station_schema_post

Create Charging Station Schema

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var body = new ChargingStationSchemaModel(); // ChargingStationSchemaModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->createChargingStationSchemaChargingStationManagerCreateChargingStationSchemaPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChargingStationSchemaModel**](ChargingStationSchemaModel.md)|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet**
> Object getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet(authorization)

get_all_charging_station_charging_station_manager_get_all_charging_stations_with_evses_get

Get All Charging Station

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->getAllChargingStationChargingStationManagerGetAllChargingStationsWithEvsesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet**
> Object getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet(chargingStationId, authorization)

get_charging_station_devices_charging_station_manager_get_charging_station_devices_get

Get Charging Station Devices

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var chargingStationId = chargingStationId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet(chargingStationId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->getChargingStationDevicesChargingStationManagerGetChargingStationDevicesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chargingStationId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet**
> Object getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet(chargingStationId, authorization)

get_charging_station_eves_list_charging_station_manager_get_charging_station_eves_list_get

Get Charging Station Eves List

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var chargingStationId = chargingStationId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet(chargingStationId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->getChargingStationEvesListChargingStationManagerGetChargingStationEvesListGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chargingStationId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConnectorDevicesChargingStationManagerGetConnectorDevicesGet**
> Object getConnectorDevicesChargingStationManagerGetConnectorDevicesGet(connectorId, authorization)

get_connector_devices_charging_station_manager_get_connector_devices_get

Get Connector Devices

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var connectorId = connectorId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getConnectorDevicesChargingStationManagerGetConnectorDevicesGet(connectorId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->getConnectorDevicesChargingStationManagerGetConnectorDevicesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectorId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvseConnectorListChargingStationManagerGetEvesConnectorListGet**
> Object getEvseConnectorListChargingStationManagerGetEvesConnectorListGet(evseId, authorization)

get_evse_connector_list_charging_station_manager_get_eves_connector_list_get

Get Evse Connector List

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var evseId = evseId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getEvseConnectorListChargingStationManagerGetEvesConnectorListGet(evseId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->getEvseConnectorListChargingStationManagerGetEvesConnectorListGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **evseId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEvseDevicesChargingStationManagerGetEvesDevicesGet**
> Object getEvseDevicesChargingStationManagerGetEvesDevicesGet(evseId, authorization)

get_evse_devices_charging_station_manager_get_eves_devices_get

Get Evse Devices

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var evseId = evseId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getEvseDevicesChargingStationManagerGetEvesDevicesGet(evseId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->getEvseDevicesChargingStationManagerGetEvesDevicesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **evseId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerChargingStationChargingStationManagerRegisterChargingStationPost**
> Object registerChargingStationChargingStationManagerRegisterChargingStationPost(body, authorization, contentType)

register_charging_station_charging_station_manager_register_charging_station_post

Register Charging Station

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ChargingStationManagerApi();
var body = new RegisterChargingStation(); // RegisterChargingStation | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.registerChargingStationChargingStationManagerRegisterChargingStationPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ChargingStationManagerApi->registerChargingStationChargingStationManagerRegisterChargingStationPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterChargingStation**](RegisterChargingStation.md)|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

