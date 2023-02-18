# swagger.api.ScriptBuilderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildScriptScriptBuilderBuildScriptPost**](ScriptBuilderApi.md#buildScriptScriptBuilderBuildScriptPost) | **POST** /script-builder/build-script | build_script_script_builder_build_script_post
[**executeScriptScriptBuilderExecuteScriptPost**](ScriptBuilderApi.md#executeScriptScriptBuilderExecuteScriptPost) | **POST** /script-builder/execute-script | execute_script_script_builder_execute_script_post
[**getLoadSchemaObjectModelScriptBuilderLoadSchemaObjectModelGet**](ScriptBuilderApi.md#getLoadSchemaObjectModelScriptBuilderLoadSchemaObjectModelGet) | **GET** /script-builder/load-schema-object-model | get_load_schema_object_model_script_builder_load_schema_object_model_get


# **buildScriptScriptBuilderBuildScriptPost**
> Object buildScriptScriptBuilderBuildScriptPost(body, authorization, contentType)

build_script_script_builder_build_script_post

Build Script

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScriptBuilderApi();
var body = new ScriptBuilderModel(); // ScriptBuilderModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.buildScriptScriptBuilderBuildScriptPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ScriptBuilderApi->buildScriptScriptBuilderBuildScriptPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScriptBuilderModel**](ScriptBuilderModel.md)|  | 
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

# **executeScriptScriptBuilderExecuteScriptPost**
> Object executeScriptScriptBuilderExecuteScriptPost(body, authorization, contentType)

execute_script_script_builder_execute_script_post

Execute Script

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScriptBuilderApi();
var body = new ScriptExecutorModel(); // ScriptExecutorModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.executeScriptScriptBuilderExecuteScriptPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ScriptBuilderApi->executeScriptScriptBuilderExecuteScriptPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScriptExecutorModel**](ScriptExecutorModel.md)|  | 
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

# **getLoadSchemaObjectModelScriptBuilderLoadSchemaObjectModelGet**
> Object getLoadSchemaObjectModelScriptBuilderLoadSchemaObjectModelGet(authorization)

get_load_schema_object_model_script_builder_load_schema_object_model_get

Get Load Schema Object Model

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScriptBuilderApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getLoadSchemaObjectModelScriptBuilderLoadSchemaObjectModelGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling ScriptBuilderApi->getLoadSchemaObjectModelScriptBuilderLoadSchemaObjectModelGet: $e\n");
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

