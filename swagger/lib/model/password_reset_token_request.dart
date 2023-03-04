// @dart=2.9
part of swagger.api;

class PasswordResetTokenRequest {
  Object username = null;

  // CountryCodes countryCode = null;

  String otpCode = null;

  PasswordResetTokenRequest();

  @override
  String toString() {
    return 'PasswordResetTokenRequest[username=$username, otpCode=$otpCode, ]';
  }

  PasswordResetTokenRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
//     username =
//
//
//       new Object.fromJson(json['username'])
// ;
//     countryCode =
//
//
//       new CountryCodes.fromJson(json['country_code'])
// ;
    otpCode = json['otp_code'];
  }

  Map<String, dynamic> toJson() {
    return {'username': username, 'otp_code': otpCode};
  }

  static List<PasswordResetTokenRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PasswordResetTokenRequest>()
        : json
            .map((value) => new PasswordResetTokenRequest.fromJson(value))
            .toList();
  }

  static Map<String, PasswordResetTokenRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PasswordResetTokenRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PasswordResetTokenRequest.fromJson(value));
    }
    return map;
  }
}
