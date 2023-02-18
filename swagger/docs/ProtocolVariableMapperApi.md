# swagger.api.ProtocolVariableMapperApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProtocolVariableMapperProtocolVariableMapperCreateProtocolVariableMapperPost**](ProtocolVariableMapperApi.md#createProtocolVariableMapperProtocolVariableMapperCreateProtocolVariableMapperPost) | **POST** /protocol-variable-mapper/create-protocol-variable-mapper | create_protocol_variable_mapper_protocol_variable_mapper_create_protocol_variable_mapper_post
[**defineProtocolProtocolVariableMapperDefineProtocolPost**](ProtocolVariableMapperApi.md#defineProtocolProtocolVariableMapperDefineProtocolPost) | **POST** /protocol-variable-mapper/define-protocol | define_protocol_protocol_variable_mapper_define_protocol_post


# **createProtocolVariableMapperProtocolVariableMapperCreateProtocolVariableMapperPost**
> Object createProtocolVariableMapperProtocolVariableMapperCreateProtocolVariableMapperPost(body, authorization, contentType)

create_protocol_variable_mapper_protocol_variable_mapper_create_protocol_variable_mapper_post

Create Protocol Variable Mapper

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProtocolVariableMapperApi();
var body = new ProtocolMapperModel(); // ProtocolMapperModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createProtocolVariableMapperProtocolVariableMapperCreateProtocolVariableMapperPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ProtocolVariableMapperApi->createProtocolVariableMapperProtocolVariableMapperCreateProtocolVariableMapperPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProtocolMapperModel**](ProtocolMapperModel.md)|  | 
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

# **defineProtocolProtocolVariableMapperDefineProtocolPost**
> Object defineProtocolProtocolVariableMapperDefineProtocolPost(body, authorization, contentType)

define_protocol_protocol_variable_mapper_define_protocol_post

Define Protocol

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProtocolVariableMapperApi();
var body = new ProtocolBuilderModel(); // ProtocolBuilderModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.defineProtocolProtocolVariableMapperDefineProtocolPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ProtocolVariableMapperApi->defineProtocolProtocolVariableMapperDefineProtocolPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProtocolBuilderModel**](ProtocolBuilderModel.md)|  | 
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

