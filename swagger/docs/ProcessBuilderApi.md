# swagger.api.ProcessBuilderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProcessProcessBuilderCreateProcessPost**](ProcessBuilderApi.md#createProcessProcessBuilderCreateProcessPost) | **POST** /process-builder/create-process | create_process_process_builder_create_process_post
[**executeProcessProcessBuilderExecuteProcessGet**](ProcessBuilderApi.md#executeProcessProcessBuilderExecuteProcessGet) | **GET** /process-builder/execute-process | execute_process_process_builder_execute_process_get
[**processExecutableTypesProcessBuilderGetProcessExecutableTypeGet**](ProcessBuilderApi.md#processExecutableTypesProcessBuilderGetProcessExecutableTypeGet) | **GET** /process-builder/get-process-executable-type | process_executable_types_process_builder_get_process_executable_type_get


# **createProcessProcessBuilderCreateProcessPost**
> Object createProcessProcessBuilderCreateProcessPost(body, authorization, contentType)

create_process_process_builder_create_process_post

Create Process

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProcessBuilderApi();
var body = new ProcessBuilderModel(); // ProcessBuilderModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createProcessProcessBuilderCreateProcessPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ProcessBuilderApi->createProcessProcessBuilderCreateProcessPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProcessBuilderModel**](ProcessBuilderModel.md)|  | 
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

# **executeProcessProcessBuilderExecuteProcessGet**
> Object executeProcessProcessBuilderExecuteProcessGet(objectId, authorization)

execute_process_process_builder_execute_process_get

Execute Process

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProcessBuilderApi();
var objectId = objectId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.executeProcessProcessBuilderExecuteProcessGet(objectId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ProcessBuilderApi->executeProcessProcessBuilderExecuteProcessGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **objectId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processExecutableTypesProcessBuilderGetProcessExecutableTypeGet**
> Object processExecutableTypesProcessBuilderGetProcessExecutableTypeGet(authorization)

process_executable_types_process_builder_get_process_executable_type_get

Process Executable Types

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProcessBuilderApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.processExecutableTypesProcessBuilderGetProcessExecutableTypeGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling ProcessBuilderApi->processExecutableTypesProcessBuilderGetProcessExecutableTypeGet: $e\n");
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

