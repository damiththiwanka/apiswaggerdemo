import 'package:base3/src/models/secure_storage.dart';


class RegistrationRepository {
  RegistrationRepository([inStorage]) {
    _storage = inStorage;
  }

  String tag = "Registration_REPOSITORY -> ";
  //ApiClient apiClient = ApiClient();

  late SecureStorage _storage;

  SecureStorage get storage => _storage;

  set storage(SecureStorage value) {
    _storage = value;
  }


  /// Get Mobile Validation
  // Future<OtpModel> validateMobile(
  //     {ValidateMobileRequest? validateMobileRequest}) async {
  //   final userControllerApi = UserApiControllerApi();
  //   try {
  //     OtpModel res = await userControllerApi.validateMobile(
  //         validateMobileRequest!,
  //         AppStrings.CLIENT_ID,
  //         AppStrings.CLIENT_SECRET);
  //     await StorageHelper()
  //         .addSecuredData("otp_model", json.encode(res).toString());
  //     return res;
  //   } on TimeoutException catch (_) {
  //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
  //   } on Exception catch (error) {
  //     print(tag + "Get Mobile Validation >> " + error.toString());
  //     Logger.debug(tag , error.toString());
  //     throw error;
  //   }
  // }

  /// Get Mobile Validation
  // Future<OtpModel> validateOTP({OtpModel? otpModel}) async {
  //   try {
  //     String savedStringOTPResponse =
  //         await StorageHelper().getSecureData("otp_model");
  //     OtpModel savedOTPModel =
  //         OtpModel.fromJson(jsonDecode(savedStringOTPResponse));
  //     savedOTPModel.otpValue = otpModel!.otpValue;
  //     savedOTPModel.otpPurpose = otpModel.otpPurpose;
  //     ApiDefaultClient appClientDefault= new ApiDefaultClient();
  //     appClientDefault.setAccessToken(savedOTPModel.accessToken);
  //     final userControllerApi = UserApiControllerApi(appClientDefault);
  //     OtpModel res = await userControllerApi.validateOtp(savedOTPModel);
  //     await StorageHelper()
  //         .addSecuredData("otp_model", json.encode(res).toString());
  //     return res;
  //   } on TimeoutException catch (_) {
  //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
  //   } on Exception catch (error) {
  //     print(tag + "Validate OTP >> " + error.toString());
  //     Logger.debug(tag , error.toString());
  //     throw error;
  //   }
  // }

  /// Get Mobile Validation
  // Future<ValidateEmailAndMobileResponse> validateEmail(
  //     {ValidateMobileRequest? validateMobileRequest}) async {
  //   try {
  //     String? tokenValue =
  //         await StorageHelper().getSecureData(AppStrings.TOKEN);
  //     apiClient.setAccessToken(tokenValue!);
  //     final userControllerApi = UserApiControllerApi(apiClient);
  //     ValidateEmailAndMobileResponse res = await userControllerApi
  //         .validateMobileEmailInternal(validateMobileRequest!);
  //     return res;
  //   } on TimeoutException catch (_) {
  //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
  //   } on Exception catch (error) {
  //     print(tag + "Get Mobile Validation >> " + error.toString());
  //     Logger.debug(tag , error.toString());
  //     throw error;
  //   }
  // }

  /// Create User
  // Future<LoginResponse> createUser({WalletUserObj? walletUserObj}) async {
  //   try {
  //     String savedStringOTPResponse =
  //         await StorageHelper().getSecureData("otp_model");
  //     OtpModel savedOTPModel =
  //         OtpModel.fromJson(jsonDecode(savedStringOTPResponse));
  //     walletUserObj!.otpPurpose = savedOTPModel.otpPurpose;
  //     walletUserObj.refId = savedOTPModel.refId;
  //     walletUserObj.otpSessionId = savedOTPModel.otpSessionId;
  //     walletUserObj.otpMode = savedOTPModel.otpMode;
  //     walletUserObj.deviceInfo =
  //         await CommonRepositoryMethods().getDeviceInfo();
  //     walletUserObj.firebaseDeviceId = await getFirebaseToken();
  //     ApiDefaultClient appClientDefault= new ApiDefaultClient();
  //
  //     appClientDefault.setAccessToken(savedOTPModel.accessToken);
  //     final userControllerApi = UserApiControllerApi(appClientDefault);
  //     LoginResponse loginResponse = await userControllerApi.createUser(
  //         walletUserObj, AppStrings.CLIENT_ID, AppStrings.CLIENT_SECRET);
  //     apiClient.setAccessToken(loginResponse.accessToken);
  //     var acToken = loginResponse.accessToken;
  //
  //     //await saveSharedPreferences(AppStrings.TOKEN, acToken);
  //     await StorageHelper().addSecuredData(AppStrings.TOKEN, acToken);
  //     //await StorageHelper().addSecuredData(AppStrings.TEMP_TOKEN, "");
  //     await StorageHelper()
  //         .addSecuredData(AppStrings.REFRESH_TOKEN, loginResponse.refreshToken);
  //     await StorageHelper().addSecuredData(AppStrings.LOGIN_ONBOARD_USER,
  //         json.encode(loginResponse.user).toString());
  //     //await saveSharedPreferences(AppStrings.LOGIN_ONBOARD_USER, json.encode(loginResponse.user).toString());
  //     return loginResponse;
  //   } on TimeoutException catch (_) {
  //     throw ('{"errorCode":"OTHER","values":{"param1":"Connection Timeout \\nPlease try again later"},"violations":null}');
  //   } on Exception catch (error) {
  //     print(tag + "Create User >> " + error.toString());
  //     Logger.debug(tag , error.toString());
  //     throw error;
  //   }
  // }

  // getFirebaseToken() async {
  //   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  //   var _token = await _firebaseMessaging.getToken();
  //   await StorageHelper().addSecuredData(AppStrings.FCM_TOKEN, _token!);
  //   return _token;
  // }
}
