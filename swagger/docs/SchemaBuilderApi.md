# swagger.api.SchemaBuilderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSchemaSchemaBuilderAddSchemaComponentMappingPost**](SchemaBuilderApi.md#createSchemaSchemaBuilderAddSchemaComponentMappingPost) | **POST** /schema-builder/add-schema-component-mapping | create_schema_schema_builder_add_schema_component_mapping_post
[**createSchemaSchemaBuilderCreateSchemaPost**](SchemaBuilderApi.md#createSchemaSchemaBuilderCreateSchemaPost) | **POST** /schema-builder/create-schema | create_schema_schema_builder_create_schema_post


# **createSchemaSchemaBuilderAddSchemaComponentMappingPost**
> Object createSchemaSchemaBuilderAddSchemaComponentMappingPost(body, authorization, contentType)

create_schema_schema_builder_add_schema_component_mapping_post

Create Schema

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SchemaBuilderApi();
var body = new ComponentMappingModel(); // ComponentMappingModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createSchemaSchemaBuilderAddSchemaComponentMappingPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling SchemaBuilderApi->createSchemaSchemaBuilderAddSchemaComponentMappingPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ComponentMappingModel**](ComponentMappingModel.md)|  | 
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

# **createSchemaSchemaBuilderCreateSchemaPost**
> Object createSchemaSchemaBuilderCreateSchemaPost(body, authorization, contentType)

create_schema_schema_builder_create_schema_post

Create Schema

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SchemaBuilderApi();
var body = new SchemaBuilderModel(); // SchemaBuilderModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createSchemaSchemaBuilderCreateSchemaPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling SchemaBuilderApi->createSchemaSchemaBuilderCreateSchemaPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SchemaBuilderModel**](SchemaBuilderModel.md)|  | 
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

