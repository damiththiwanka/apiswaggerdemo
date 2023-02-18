# swagger.api.VehicleManagerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNewUserVerhicleVehiclesUserVehiclePost**](VehicleManagerApi.md#addNewUserVerhicleVehiclesUserVehiclePost) | **POST** /vehicles/user-vehicle | add_new_user_verhicle_vehicles_user_vehicle_post
[**addNewVehicleManufacturerVehiclesManufacturePost**](VehicleManagerApi.md#addNewVehicleManufacturerVehiclesManufacturePost) | **POST** /vehicles/manufacture | add_new_vehicle_manufacturer_vehicles_manufacture_post
[**addNewVehicleModelVehiclesModelPost**](VehicleManagerApi.md#addNewVehicleModelVehiclesModelPost) | **POST** /vehicles/model | add_new_vehicle_model_vehicles_model_post
[**getAllVehicleListVehiclesAllModelsGet**](VehicleManagerApi.md#getAllVehicleListVehiclesAllModelsGet) | **GET** /vehicles/all-models | get_all_vehicle_list_vehicles_all_models_get
[**getManufacturesListVehiclesManufacturesGet**](VehicleManagerApi.md#getManufacturesListVehiclesManufacturesGet) | **GET** /vehicles/manufactures | get_manufactures_list_vehicles_manufactures_get
[**getMetaDataVehiclesMetaDataGet**](VehicleManagerApi.md#getMetaDataVehiclesMetaDataGet) | **GET** /vehicles/meta-data | get_meta_data_vehicles_meta_data_get
[**getModelsOfManufacturerVehiclesManufactureIdModelsGet**](VehicleManagerApi.md#getModelsOfManufacturerVehiclesManufactureIdModelsGet) | **GET** /vehicles/{manufacture_id}/models | get_models_of_manufacturer_vehicles__manufacture_id__models_get
[**getUserVehiclesVehiclesUserIdGet**](VehicleManagerApi.md#getUserVehiclesVehiclesUserIdGet) | **GET** /vehicles/{user_id} | get_user_vehicles_vehicles__user_id__get
[**removeUserVehicleVehiclesVehicleIdDelete**](VehicleManagerApi.md#removeUserVehicleVehiclesVehicleIdDelete) | **DELETE** /vehicles/{vehicle_id} | remove_user_vehicle_vehicles__vehicle_id__delete
[**updateUserVehicleVehiclesPut**](VehicleManagerApi.md#updateUserVehicleVehiclesPut) | **PUT** /vehicles/ | update_user_vehicle_vehicles__put


# **addNewUserVerhicleVehiclesUserVehiclePost**
> Object addNewUserVerhicleVehiclesUserVehiclePost(body, authorization, contentType)

add_new_user_verhicle_vehicles_user_vehicle_post

Add New User Verhicle

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var body = new NewVehicle(); // NewVehicle | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.addNewUserVerhicleVehiclesUserVehiclePost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->addNewUserVerhicleVehiclesUserVehiclePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewVehicle**](NewVehicle.md)|  | 
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

# **addNewVehicleManufacturerVehiclesManufacturePost**
> Object addNewVehicleManufacturerVehiclesManufacturePost(body, authorization, contentType)

add_new_vehicle_manufacturer_vehicles_manufacture_post

Add New Vehicle Manufacturer

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var body = new NewManufacture(); // NewManufacture | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.addNewVehicleManufacturerVehiclesManufacturePost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->addNewVehicleManufacturerVehiclesManufacturePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewManufacture**](NewManufacture.md)|  | 
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

# **addNewVehicleModelVehiclesModelPost**
> Object addNewVehicleModelVehiclesModelPost(body, authorization, contentType)

add_new_vehicle_model_vehicles_model_post

Add New Vehicle Model

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var body = new NewVehicleModel(); // NewVehicleModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.addNewVehicleModelVehiclesModelPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->addNewVehicleModelVehiclesModelPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NewVehicleModel**](NewVehicleModel.md)|  | 
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

# **getAllVehicleListVehiclesAllModelsGet**
> Object getAllVehicleListVehiclesAllModelsGet(authorization)

get_all_vehicle_list_vehicles_all_models_get

Get All Vehicle List

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getAllVehicleListVehiclesAllModelsGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->getAllVehicleListVehiclesAllModelsGet: $e\n");
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

# **getManufacturesListVehiclesManufacturesGet**
> Object getManufacturesListVehiclesManufacturesGet(authorization)

get_manufactures_list_vehicles_manufactures_get

Get Manufactures List

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getManufacturesListVehiclesManufacturesGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->getManufacturesListVehiclesManufacturesGet: $e\n");
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

# **getMetaDataVehiclesMetaDataGet**
> Object getMetaDataVehiclesMetaDataGet(authorization)

get_meta_data_vehicles_meta_data_get

Get Meta Data

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getMetaDataVehiclesMetaDataGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->getMetaDataVehiclesMetaDataGet: $e\n");
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

# **getModelsOfManufacturerVehiclesManufactureIdModelsGet**
> Object getModelsOfManufacturerVehiclesManufactureIdModelsGet(manufactureId, authorization)

get_models_of_manufacturer_vehicles__manufacture_id__models_get

Get Models Of Manufacturer

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var manufactureId = manufactureId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getModelsOfManufacturerVehiclesManufactureIdModelsGet(manufactureId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->getModelsOfManufacturerVehiclesManufactureIdModelsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manufactureId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserVehiclesVehiclesUserIdGet**
> Object getUserVehiclesVehiclesUserIdGet(userId, authorization)

get_user_vehicles_vehicles__user_id__get

Get User Vehicles

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var userId = userId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getUserVehiclesVehiclesUserIdGet(userId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->getUserVehiclesVehiclesUserIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserVehicleVehiclesVehicleIdDelete**
> Object removeUserVehicleVehiclesVehicleIdDelete(vehicleId, authorization)

remove_user_vehicle_vehicles__vehicle_id__delete

Remove User Vehicle

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var vehicleId = vehicleId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.removeUserVehicleVehiclesVehicleIdDelete(vehicleId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->removeUserVehicleVehiclesVehicleIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vehicleId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserVehicleVehiclesPut**
> Object updateUserVehicleVehiclesPut(body, authorization, contentType)

update_user_vehicle_vehicles__put

Update User Vehicle

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VehicleManagerApi();
var body = new UpdateUserVehicle(); // UpdateUserVehicle | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.updateUserVehicleVehiclesPut(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling VehicleManagerApi->updateUserVehicleVehiclesPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateUserVehicle**](UpdateUserVehicle.md)|  | 
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

