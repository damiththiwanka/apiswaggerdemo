# swagger.api.UserManagerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateUserByIdUserActivatePut**](UserManagerApi.md#activateUserByIdUserActivatePut) | **PUT** /user/activate | activate_user_by_id_user_activate_put
[**activateUserUserActivatePost**](UserManagerApi.md#activateUserUserActivatePost) | **POST** /user/activate | activate_user_user_activate_post
[**createNewUserUserCreatePost**](UserManagerApi.md#createNewUserUserCreatePost) | **POST** /user/create | create_new_user_user_create_post
[**deactivateUserByIdUserDeactivatePut**](UserManagerApi.md#deactivateUserByIdUserDeactivatePut) | **PUT** /user/deactivate | deactivate_user_by_id_user_deactivate_put
[**deleteAUserQuestionUserDeleteUserQuestionGet**](UserManagerApi.md#deleteAUserQuestionUserDeleteUserQuestionGet) | **GET** /user/delete-user-question | delete_a_user_question_user_delete_user_question_get
[**getProfileImageUserImageGet**](UserManagerApi.md#getProfileImageUserImageGet) | **GET** /user/image | get_profile_image_user_image_get
[**getUserByIdUserByIdGet**](UserManagerApi.md#getUserByIdUserByIdGet) | **GET** /user/by-id | get_user_by_id_user_by_id_get
[**getUserListUserListGet**](UserManagerApi.md#getUserListUserListGet) | **GET** /user/list | get_user_list_user_list_get
[**getUsersByUserSearchByGet**](UserManagerApi.md#getUsersByUserSearchByGet) | **GET** /user/search-by | get_users_by_user_search_by_get
[**loginUserUserLoginPost**](UserManagerApi.md#loginUserUserLoginPost) | **POST** /user/login | login_user_user_login_post
[**permanentlyDeleteAUserUserDeleteUserPost**](UserManagerApi.md#permanentlyDeleteAUserUserDeleteUserPost) | **POST** /user/delete-user | permanently_delete_a_user_user_delete_user_post
[**readUserQrCodeUserReadQrGet**](UserManagerApi.md#readUserQrCodeUserReadQrGet) | **GET** /user/read-qr | read_user_qr_code_user_read_qr_get
[**refreshTokenUserRefreshTokenGet**](UserManagerApi.md#refreshTokenUserRefreshTokenGet) | **GET** /user/refresh-token | refresh_token_user_refresh_token_get
[**registerUserUserRegisterPost**](UserManagerApi.md#registerUserUserRegisterPost) | **POST** /user/register | register_user_user_register_post
[**resendActivationEmailUserResendActivationEmailPost**](UserManagerApi.md#resendActivationEmailUserResendActivationEmailPost) | **POST** /user/resend-activation-email | resend_activation_email_user_resend_activation_email_post
[**setPasswordForUserUserSetPasswordPost**](UserManagerApi.md#setPasswordForUserUserSetPasswordPost) | **POST** /user/set-password | set_password_for_user_user_set_password_post
[**signUpTermsAndConditionsUserSignUpTermsGet**](UserManagerApi.md#signUpTermsAndConditionsUserSignUpTermsGet) | **GET** /user/sign-up-terms | sign_up_terms_and_conditions_user_sign_up_terms_get
[**updateAnotherUserProfileUserUpdateUserPut**](UserManagerApi.md#updateAnotherUserProfileUserUpdateUserPut) | **PUT** /user/update-user | update_another_user_profile_user_update_user_put
[**updateProfileImageUserImagePut**](UserManagerApi.md#updateProfileImageUserImagePut) | **PUT** /user/image | update_profile_image_user_image_put
[**updateUserProfileUserProfilePut**](UserManagerApi.md#updateUserProfileUserProfilePut) | **PUT** /user/profile | update_user_profile_user_profile_put
[**userQrCodeUserQrGet**](UserManagerApi.md#userQrCodeUserQrGet) | **GET** /user/qr | user_qr_code_user_qr_get


# **activateUserByIdUserActivatePut**
> Object activateUserByIdUserActivatePut(body, contentType)

activate_user_by_id_user_activate_put

Activate User By Id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new VisitRequest(); // VisitRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.activateUserByIdUserActivatePut(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->activateUserByIdUserActivatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VisitRequest**](VisitRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activateUserUserActivatePost**
> Object activateUserUserActivatePost(body, authorization, contentType)

activate_user_user_activate_post

Activate User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new UserActivationRequest(); // UserActivationRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.activateUserUserActivatePost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->activateUserUserActivatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserActivationRequest**](UserActivationRequest.md)|  | 
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

# **createNewUserUserCreatePost**
> Object createNewUserUserCreatePost(body, contentType)

create_new_user_user_create_post

Create New User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new CreateNewUserRequest(); // CreateNewUserRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.createNewUserUserCreatePost(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->createNewUserUserCreatePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateNewUserRequest**](CreateNewUserRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deactivateUserByIdUserDeactivatePut**
> Object deactivateUserByIdUserDeactivatePut(body, contentType)

deactivate_user_by_id_user_deactivate_put

Deactivate User By Id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new VisitRequest(); // VisitRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.deactivateUserByIdUserDeactivatePut(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->deactivateUserByIdUserDeactivatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**VisitRequest**](VisitRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAUserQuestionUserDeleteUserQuestionGet**
> Object deleteAUserQuestionUserDeleteUserQuestionGet(authorization)

delete_a_user_question_user_delete_user_question_get

Delete A User Question

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.deleteAUserQuestionUserDeleteUserQuestionGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->deleteAUserQuestionUserDeleteUserQuestionGet: $e\n");
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

# **getProfileImageUserImageGet**
> Object getProfileImageUserImageGet()

get_profile_image_user_image_get

Get Profile Image

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();

try { 
    var result = api_instance.getProfileImageUserImageGet();
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->getProfileImageUserImageGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByIdUserByIdGet**
> Object getUserByIdUserByIdGet(authorization, uid)

get_user_by_id_user_by_id_get

Get User By Id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var authorization = authorization_example; // String | 
var uid = uid_example; // String | 

try { 
    var result = api_instance.getUserByIdUserByIdGet(authorization, uid);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->getUserByIdUserByIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] [default to Bearer {token}]
 **uid** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserListUserListGet**
> Object getUserListUserListGet(roleId, orderBy)

get_user_list_user_list_get

Get User List

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var roleId = roleId_example; // String | 
var orderBy = orderBy_example; // String | 

try { 
    var result = api_instance.getUserListUserListGet(roleId, orderBy);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->getUserListUserListGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 
 **orderBy** | **String**|  | [optional] [default to asc]

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByUserSearchByGet**
> Object getUsersByUserSearchByGet(nic, fullname, contact, email)

get_users_by_user_search_by_get

Get Users By

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var nic = nic_example; // String | 
var fullname = fullname_example; // String | 
var contact = contact_example; // String | 
var email = email_example; // String | 

try { 
    var result = api_instance.getUsersByUserSearchByGet(nic, fullname, contact, email);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->getUsersByUserSearchByGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nic** | **String**|  | [optional] 
 **fullname** | **String**|  | [optional] 
 **contact** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUserUserLoginPost**
> Object loginUserUserLoginPost(body, authorization, contentType)

login_user_user_login_post

Login User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new UserLoginRequest(); // UserLoginRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.loginUserUserLoginPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->loginUserUserLoginPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserLoginRequest**](UserLoginRequest.md)|  | 
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

# **permanentlyDeleteAUserUserDeleteUserPost**
> Object permanentlyDeleteAUserUserDeleteUserPost(body, contentType)

permanently_delete_a_user_user_delete_user_post

Permanently Delete A User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new DeleteUserRequest(); // DeleteUserRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.permanentlyDeleteAUserUserDeleteUserPost(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->permanentlyDeleteAUserUserDeleteUserPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeleteUserRequest**](DeleteUserRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readUserQrCodeUserReadQrGet**
> Object readUserQrCodeUserReadQrGet(publicToken)

read_user_qr_code_user_read_qr_get

Read User Qr Code

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var publicToken = publicToken_example; // String | 

try { 
    var result = api_instance.readUserQrCodeUserReadQrGet(publicToken);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->readUserQrCodeUserReadQrGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicToken** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshTokenUserRefreshTokenGet**
> Object refreshTokenUserRefreshTokenGet()

refresh_token_user_refresh_token_get

Refresh Token

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();

try { 
    var result = api_instance.refreshTokenUserRefreshTokenGet();
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->refreshTokenUserRefreshTokenGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUserUserRegisterPost**
> Object registerUserUserRegisterPost(body, authorization, contentType)

register_user_user_register_post

Register User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new UserRegisterRequest(); // UserRegisterRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.registerUserUserRegisterPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->registerUserUserRegisterPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserRegisterRequest**](UserRegisterRequest.md)|  | 
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

# **resendActivationEmailUserResendActivationEmailPost**
> Object resendActivationEmailUserResendActivationEmailPost(body, authorization, contentType)

resend_activation_email_user_resend_activation_email_post

Resend Activation Email

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new OTPRequest(); // OTPRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.resendActivationEmailUserResendActivationEmailPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->resendActivationEmailUserResendActivationEmailPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OTPRequest**](OTPRequest.md)|  | 
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

# **setPasswordForUserUserSetPasswordPost**
> Object setPasswordForUserUserSetPasswordPost(body, authorization, contentType)

set_password_for_user_user_set_password_post

Set Password For User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new SetPasswordRequest(); // SetPasswordRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.setPasswordForUserUserSetPasswordPost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->setPasswordForUserUserSetPasswordPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SetPasswordRequest**](SetPasswordRequest.md)|  | 
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

# **signUpTermsAndConditionsUserSignUpTermsGet**
> Object signUpTermsAndConditionsUserSignUpTermsGet(authorization)

sign_up_terms_and_conditions_user_sign_up_terms_get

Sign Up Terms And Conditions

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.signUpTermsAndConditionsUserSignUpTermsGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->signUpTermsAndConditionsUserSignUpTermsGet: $e\n");
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

# **updateAnotherUserProfileUserUpdateUserPut**
> Object updateAnotherUserProfileUserUpdateUserPut(body, contentType)

update_another_user_profile_user_update_user_put

Update Another User Profile

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new UpdateAnotherUserRequest(); // UpdateAnotherUserRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.updateAnotherUserProfileUserUpdateUserPut(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->updateAnotherUserProfileUserUpdateUserPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateAnotherUserRequest**](UpdateAnotherUserRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfileImageUserImagePut**
> Object updateProfileImageUserImagePut(body, contentType)

update_profile_image_user_image_put

Update Profile Image

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new AvatarUpdateRequest(); // AvatarUpdateRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.updateProfileImageUserImagePut(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->updateProfileImageUserImagePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AvatarUpdateRequest**](AvatarUpdateRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfileUserProfilePut**
> Object updateUserProfileUserProfilePut(body, contentType)

update_user_profile_user_profile_put

Update User Profile

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();
var body = new UpdateUserRequest(); // UpdateUserRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.updateUserProfileUserProfilePut(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->updateUserProfileUserProfilePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateUserRequest**](UpdateUserRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userQrCodeUserQrGet**
> Object userQrCodeUserQrGet()

user_qr_code_user_qr_get

User Qr Code

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserManagerApi();

try { 
    var result = api_instance.userQrCodeUserQrGet();
    print(result);
} catch (e) {
    print("Exception when calling UserManagerApi->userQrCodeUserQrGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

