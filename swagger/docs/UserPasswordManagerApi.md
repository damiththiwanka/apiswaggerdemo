# swagger.api.UserPasswordManagerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeUserPasswordPasswordChangePost**](UserPasswordManagerApi.md#changeUserPasswordPasswordChangePost) | **POST** /password/change | change_user_password_password_change_post
[**getPasswordResetTokenPasswordIforgotTokenPost**](UserPasswordManagerApi.md#getPasswordResetTokenPasswordIforgotTokenPost) | **POST** /password/iforgot-token | get_password_reset_token_password_iforgot_token_post
[**requestPasswordResetPasswordIforgotPost**](UserPasswordManagerApi.md#requestPasswordResetPasswordIforgotPost) | **POST** /password/iforgot | request_password_reset_password_iforgot_post
[**resetUserPasswordPasswordResetPost**](UserPasswordManagerApi.md#resetUserPasswordPasswordResetPost) | **POST** /password/reset | reset_user_password_password_reset_post


# **changeUserPasswordPasswordChangePost**
> Object changeUserPasswordPasswordChangePost(body, contentType)

change_user_password_password_change_post

Change User Password

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPasswordManagerApi();
var body = new PasswordChange(); // PasswordChange | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.changeUserPasswordPasswordChangePost(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserPasswordManagerApi->changeUserPasswordPasswordChangePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PasswordChange**](PasswordChange.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPasswordResetTokenPasswordIforgotTokenPost**
> Object getPasswordResetTokenPasswordIforgotTokenPost(body, authorization, contentType)

get_password_reset_token_password_iforgot_token_post

Get Password Reset Token

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPasswordManagerApi();
var body = new PasswordResetTokenRequest(); // PasswordResetTokenRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.getPasswordResetTokenPasswordIforgotTokenPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserPasswordManagerApi->getPasswordResetTokenPasswordIforgotTokenPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PasswordResetTokenRequest**](PasswordResetTokenRequest.md)|  | 
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

# **requestPasswordResetPasswordIforgotPost**
> Object requestPasswordResetPasswordIforgotPost(body, authorization, contentType)

request_password_reset_password_iforgot_post

Request Password Reset

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPasswordManagerApi();
var body = new IForgetRequest(); // IForgetRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.requestPasswordResetPasswordIforgotPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserPasswordManagerApi->requestPasswordResetPasswordIforgotPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IForgetRequest**](IForgetRequest.md)|  | 
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

# **resetUserPasswordPasswordResetPost**
> Object resetUserPasswordPasswordResetPost(body, contentType)

reset_user_password_password_reset_post

Reset User Password

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPasswordManagerApi();
var body = new PasswordReset(); // PasswordReset | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.resetUserPasswordPasswordResetPost(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserPasswordManagerApi->resetUserPasswordPasswordResetPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PasswordReset**](PasswordReset.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

