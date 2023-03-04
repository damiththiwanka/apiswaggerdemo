import 'dart:async';
import 'package:base3/src/blocs/login/login_bloc.dart';
import 'package:base3/src/models/secure_storage.dart';
// import 'package:swagger/api.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository([inStorage]) {
    _storage = inStorage;
  }
  final _controller = StreamController<AuthenticationStatus>();

  String tag = "AUTHENTICATION_REPOSITORY -> ";

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  late SecureStorage _storage;
  // ApiClient apiClient = ApiClient();
  String TAG = "REPOSITORY->";

  SecureStorage get storage => _storage;

  set storage(SecureStorage value) {
    _storage = value;
  }
  //
  // Future<String> logIn({required UserLoginRequest loginRequestParent}) async {
  //   try {
  //     final userManager = UserManagerApi();
  //     String res = await
  //
  //         // otherScreen.getAppDetails(
  //         //     clientID: AppStrings.CLIENT_ID, clientSecret: AppStrings.CLIENT_SECRET);
  //
  //         userManager.loginUserUserLoginPost(loginRequestParent,
  //             authorization: "Authorization", contentType: "application/json");
  //
  //     return res;
  //   } on TimeoutException catch (_) {
  //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
  //   } on Exception catch (error) {
  //     print(tag + "Get Version >> " + error.toString());
  //     throw error;
  //   }
  //   // await Future.delayed(
  //   //   const Duration(milliseconds: 3),
  //   //       () => _controller.add(AuthenticationStatus.authenticated),
  //   // );
  // }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  ///  Get User
  /// param --
  ///
  Future<String> getUser() async {
    String user = '';
    return user;
  }

  /// Get Version
  // Future<AppDetailsResponse> getVersion() async {
  //   final otherScreen = OtherScreensApi();
  //   final sharedPrefService = await SharedPreferencesService.instance;
  //   try {
  //     AppDetailsResponse res = await otherScreen.getAppDetails(
  //         clientID: AppStrings.CLIENT_ID, clientSecret: AppStrings.CLIENT_SECRET);
  //
  //     ///Store Base path images
  //     sharedPrefService!.saveData("appDetails", json.encode(res).toString());
  //     return res;
  //   } on TimeoutException catch (_) {
  //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
  //   } on Exception catch (error) {
  //     print(tag + "Get Version >> " + error.toString());
  //     throw error;
  //   }
  // }

  void dispose() => _controller.close();
}
