# swagger.api.CollectionBuilderApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProcessCollectionBuilderCreateCollectionPost**](CollectionBuilderApi.md#createProcessCollectionBuilderCreateCollectionPost) | **POST** /collection-builder/create-collection | create_process_collection_builder_create_collection_post


# **createProcessCollectionBuilderCreateCollectionPost**
> Object createProcessCollectionBuilderCreateCollectionPost(body, authorization, contentType)

create_process_collection_builder_create_collection_post

Create Process

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CollectionBuilderApi();
var body = new CollectionBuilderModel(); // CollectionBuilderModel | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createProcessCollectionBuilderCreateCollectionPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling CollectionBuilderApi->createProcessCollectionBuilderCreateCollectionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CollectionBuilderModel**](CollectionBuilderModel.md)|  | 
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

