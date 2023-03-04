// @dart=2.9
part of swagger.api;

class UpdateUserRequest {
  String firstName = null;

  String lastName = null;

  String mobile = null;

  DateTime birthDay = null;

  UpdateUserRequest();

  @override
  String toString() {
    return 'UpdateUserRequest[firstName=$firstName, lastName=$lastName, mobile=$mobile, birthDay=$birthDay, ]';
  }

  UpdateUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
//     birthDay =
//
//
//       new DateTime.fromJson(json['birth_day'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'mobile': mobile,
      'birth_day': birthDay
    };
  }

  static List<UpdateUserRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UpdateUserRequest>()
        : json.map((value) => new UpdateUserRequest.fromJson(value)).toList();
  }

  static Map<String, UpdateUserRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateUserRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UpdateUserRequest.fromJson(value));
    }
    return map;
  }
}
