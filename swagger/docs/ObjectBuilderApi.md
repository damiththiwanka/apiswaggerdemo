# swagger.api.ObjectBuilderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createObjectFromObjectModelObjectBuilderCreateObjectPost**](ObjectBuilderApi.md#createObjectFromObjectModelObjectBuilderCreateObjectPost) | **POST** /object-builder/create-object | create_object_from_object_model_object_builder_create_object_post
[**getAObjectObjectBuilderGetAObjectGet**](ObjectBuilderApi.md#getAObjectObjectBuilderGetAObjectGet) | **GET** /object-builder/get-a-object | get_a_object_object_builder_get_a_object_get
[**getAllAvailableObjectsObjectBuilderGetAllObjectsGet**](ObjectBuilderApi.md#getAllAvailableObjectsObjectBuilderGetAllObjectsGet) | **GET** /object-builder/get-all-objects | get_all_available_objects_object_builder_get_all_objects_get
[**getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet**](ObjectBuilderApi.md#getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet) | **GET** /object-builder/load-schema-object-model | get_load_schema_object_model_object_builder_load_schema_object_model_get


# **createObjectFromObjectModelObjectBuilderCreateObjectPost**
> Object createObjectFromObjectModelObjectBuilderCreateObjectPost(body, authorization, contentType)

create_object_from_object_model_object_builder_create_object_post

Create Object From Object Model

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ObjectBuilderApi();
var body = new ObjectBuilderModel(); // ObjectBuilderModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createObjectFromObjectModelObjectBuilderCreateObjectPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling ObjectBuilderApi->createObjectFromObjectModelObjectBuilderCreateObjectPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ObjectBuilderModel**](ObjectBuilderModel.md)|  | 
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

# **getAObjectObjectBuilderGetAObjectGet**
> Object getAObjectObjectBuilderGetAObjectGet(objectId, authorization)

get_a_object_object_builder_get_a_object_get

Get A Object

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ObjectBuilderApi();
var objectId = objectId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getAObjectObjectBuilderGetAObjectGet(objectId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ObjectBuilderApi->getAObjectObjectBuilderGetAObjectGet: $e\n");
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

# **getAllAvailableObjectsObjectBuilderGetAllObjectsGet**
> Object getAllAvailableObjectsObjectBuilderGetAllObjectsGet(authorization)

get_all_available_objects_object_builder_get_all_objects_get

Get All Available Objects

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ObjectBuilderApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getAllAvailableObjectsObjectBuilderGetAllObjectsGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling ObjectBuilderApi->getAllAvailableObjectsObjectBuilderGetAllObjectsGet: $e\n");
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

# **getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet**
> Object getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet(schemaId, authorization)

get_load_schema_object_model_object_builder_load_schema_object_model_get

Get Load Schema Object Model

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ObjectBuilderApi();
var schemaId = schemaId_example; // String | 
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet(schemaId, authorization);
    print(result);
} catch (e) {
    print("Exception when calling ObjectBuilderApi->getLoadSchemaObjectModelObjectBuilderLoadSchemaObjectModelGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schemaId** | **String**|  | 
 **authorization** | **String**|  | [optional] [default to Bearer {token}]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

