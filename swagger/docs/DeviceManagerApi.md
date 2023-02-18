# swagger.api.DeviceManagerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVariablesDeviceManagerGetVariablesPost**](DeviceManagerApi.md#getVariablesDeviceManagerGetVariablesPost) | **POST** /device-manager/get-variables | get_variables_device_manager_get_variables_post
[**setVariablesDeviceManagerSetVariablesPost**](DeviceManagerApi.md#setVariablesDeviceManagerSetVariablesPost) | **POST** /device-manager/set-variables | set_variables_device_manager_set_variables_post


# **getVariablesDeviceManagerGetVariablesPost**
> Object getVariablesDeviceManagerGetVariablesPost(protocol, body, authorization, contentType)

get_variables_device_manager_get_variables_post

Get Variables

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceManagerApi();
var protocol = protocol_example; // String | 
var body = new GetVariableDataType(); // GetVariableDataType | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.getVariablesDeviceManagerGetVariablesPost(protocol, body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling DeviceManagerApi->getVariablesDeviceManagerGetVariablesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**|  | 
 **body** | [**GetVariableDataType**](GetVariableDataType.md)|  | 
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

# **setVariablesDeviceManagerSetVariablesPost**
> Object setVariablesDeviceManagerSetVariablesPost(authorization)

set_variables_device_manager_set_variables_post

Set Variables

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DeviceManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.setVariablesDeviceManagerSetVariablesPost(authorization);
    print(result);
} catch (e) {
    print("Exception when calling DeviceManagerApi->setVariablesDeviceManagerSetVariablesPost: $e\n");
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

