# swagger.api.OCPPApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resetOcppResetPost**](OCPPApi.md#resetOcppResetPost) | **POST** /ocpp/reset | reset_ocpp_reset_post


# **resetOcppResetPost**
> Object resetOcppResetPost(authorization)

reset_ocpp_reset_post

Reset

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OCPPApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.resetOcppResetPost(authorization);
    print(result);
} catch (e) {
    print("Exception when calling OCPPApi->resetOcppResetPost: $e\n");
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

