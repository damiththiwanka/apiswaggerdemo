# swagger.api.UserRoleManagerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addRoleUserRolePost**](UserRoleManagerApi.md#addRoleUserRolePost) | **POST** /user-role/ | add_role_user_role__post
[**assignRoleToUserUserRoleAssignPost**](UserRoleManagerApi.md#assignRoleToUserUserRoleAssignPost) | **POST** /user-role/assign | assign_role_to_user_user_role_assign_post
[**getAllUserRolesUserRoleGet**](UserRoleManagerApi.md#getAllUserRolesUserRoleGet) | **GET** /user-role/ | get_all_user_roles_user_role__get
[**getMyUserRolesUserRoleOwnGet**](UserRoleManagerApi.md#getMyUserRolesUserRoleOwnGet) | **GET** /user-role/own | get_my_user_roles_user_role_own_get
[**getPortalAllowedRolesUserRolePortalRolesGet**](UserRoleManagerApi.md#getPortalAllowedRolesUserRolePortalRolesGet) | **GET** /user-role/portal_roles | get_portal_allowed_roles_user_role_portal_roles_get
[**removeRoleFromUserUserRoleDismissPost**](UserRoleManagerApi.md#removeRoleFromUserUserRoleDismissPost) | **POST** /user-role/dismiss | remove_role_from_user_user_role_dismiss_post
[**updateRoleExpireDateUserRoleUpdateExpireDatePut**](UserRoleManagerApi.md#updateRoleExpireDateUserRoleUpdateExpireDatePut) | **PUT** /user-role/update_expire_date | update_role_expire_date_user_role_update_expire_date_put


# **addRoleUserRolePost**
> Object addRoleUserRolePost(body, authorization, contentType)

add_role_user_role__post

Add Role

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();
var body = new CreateRoleRequest(); // CreateRoleRequest | 
var authorization = authorization_example; // String | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.addRoleUserRolePost(body, authorization, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->addRoleUserRolePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRoleRequest**](CreateRoleRequest.md)|  | 
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

# **assignRoleToUserUserRoleAssignPost**
> Object assignRoleToUserUserRoleAssignPost(body, contentType)

assign_role_to_user_user_role_assign_post

Assign Role To User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();
var body = new AssignUserRoleRequest(); // AssignUserRoleRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.assignRoleToUserUserRoleAssignPost(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->assignRoleToUserUserRoleAssignPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AssignUserRoleRequest**](AssignUserRoleRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUserRolesUserRoleGet**
> Object getAllUserRolesUserRoleGet()

get_all_user_roles_user_role__get

Get All User Roles

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();

try { 
    var result = api_instance.getAllUserRolesUserRoleGet();
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->getAllUserRolesUserRoleGet: $e\n");
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

# **getMyUserRolesUserRoleOwnGet**
> Object getMyUserRolesUserRoleOwnGet()

get_my_user_roles_user_role_own_get

Get My User Roles

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();

try { 
    var result = api_instance.getMyUserRolesUserRoleOwnGet();
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->getMyUserRolesUserRoleOwnGet: $e\n");
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

# **getPortalAllowedRolesUserRolePortalRolesGet**
> Object getPortalAllowedRolesUserRolePortalRolesGet(authorization)

get_portal_allowed_roles_user_role_portal_roles_get

Get Portal Allowed Roles

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();
var authorization = authorization_example; // String | 

try { 
    var result = api_instance.getPortalAllowedRolesUserRolePortalRolesGet(authorization);
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->getPortalAllowedRolesUserRolePortalRolesGet: $e\n");
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

# **removeRoleFromUserUserRoleDismissPost**
> Object removeRoleFromUserUserRoleDismissPost(body, contentType)

remove_role_from_user_user_role_dismiss_post

Remove Role From User

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();
var body = new DeclineUserRoleRequest(); // DeclineUserRoleRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.removeRoleFromUserUserRoleDismissPost(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->removeRoleFromUserUserRoleDismissPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeclineUserRoleRequest**](DeclineUserRoleRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoleExpireDateUserRoleUpdateExpireDatePut**
> Object updateRoleExpireDateUserRoleUpdateExpireDatePut(body, contentType)

update_role_expire_date_user_role_update_expire_date_put

Update Role Expire Date

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new UserRoleManagerApi();
var body = new AssignUserRoleRequest(); // AssignUserRoleRequest | 
var contentType = contentType_example; // String | 

try { 
    var result = api_instance.updateRoleExpireDateUserRoleUpdateExpireDatePut(body, contentType);
    print(result);
} catch (e) {
    print("Exception when calling UserRoleManagerApi->updateRoleExpireDateUserRoleUpdateExpireDatePut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AssignUserRoleRequest**](AssignUserRoleRequest.md)|  | 
 **contentType** | **String**|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

