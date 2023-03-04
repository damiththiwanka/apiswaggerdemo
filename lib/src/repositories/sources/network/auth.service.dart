// import 'dart:async';
//
// import 'package:base3/src/helpers/http/http.helper.dart';
// import 'package:base3/src/helpers/storage/storage.helper.dart';
// import 'package:base3/src/helpers/storage/storage.keys.dart';
// import 'package:base3/src/models/response.model.dart';
// import 'package:base3/src/models/user.model.dart';
// import './base/endpoints.dart' as Endpoints;
//
// class AuthService{
//   get tag => "AuthService";
//
//   Future<ResponseModel> login(String login, String senha) async {
//     ResponseModel response = ResponseModel(message: '', status: 200);
//     UserModel user;
//
//     final String url = Endpoints.login.auth;
//
//     final payload = {login, senha};
//
//     final retAuth = HttpHelper.post(url, body: payload);
//
//     await retAuth.then((res) {
//       String token = res.data["access_token"];
//       StorageHelper.set(StorageKeys.token, token);
//       StorageHelper.set(StorageKeys.login, login);
//       StorageHelper.set(StorageKeys.senha, senha);
//
//       user = UserModel.fromJson(res.data);
//
//       response.status = res.statusCode!;
//       response.data = user;
//       response.message = res.statusMessage!;
//     })
//     .catchError((e) {
//       StorageHelper.set(StorageKeys.token, "");
//       StorageHelper.set(StorageKeys.login, "");
//       StorageHelper.set(StorageKeys.senha, "");
//
//       response.status = 500;
//       response.data = e;
//       response.message = "User not found";
//     });
//
//     return response;
//   }
//
//   // Future<String> logIn({required UserLoginRequest loginRequestParent}) async {
//   //   ApiClient apiClient = ApiClient();
//   //   final authControllerApi = UserManagerApi();
//   //   try {
//   //     UserLoginRequest login_Request = new UserLoginRequest();
//   //    login_Request.username = loginRequestParent.username;
//   //    login_Request.password = loginRequestParent.password;
//   //
//   //
//   //
//   //     String loginResponse = await authControllerApi.loginUserUserLoginPost(
//   //         login_Request);
//   //
//   //     return loginResponse;
//   //   } on TimeoutException catch (_) {
//   //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
//   //   } on Exception catch (error) {
//   //     print(tag + "Get Mobile Validation >> " + error.toString());
//   //     throw error;
//   //   }
//   // }
// }
