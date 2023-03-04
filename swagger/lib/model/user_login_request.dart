// @dart=2.9
part of swagger.api;

class UserLoginRequest {
  String username = null;

  String password = null;

  @override
  String toString() {
    return 'UserLoginRequest[username=$username, password=$password, ]';
  }

  UserLoginRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
//     username =
//       new Object.fromJson(json['username'])
// ;

    username = json['username'];

    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {'username': username, 'password': password};
  }

  static List<UserLoginRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UserLoginRequest>()
        : json.map((value) => new UserLoginRequest.fromJson(value)).toList();
  }

  static Map<String, UserLoginRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserLoginRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UserLoginRequest.fromJson(value));
    }
    return map;
  }

  UserLoginRequest(this.password, this.username);
}
