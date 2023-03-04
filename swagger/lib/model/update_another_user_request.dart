// @dart=2.9
part of swagger.api;

class UpdateAnotherUserRequest {
  String firstName = null;

  String lastName = null;

  String mobile = null;

  DateTime birthDay = null;

  String userId = null;

  String nicNumber = null;

  UpdateAnotherUserRequest();

  @override
  String toString() {
    return 'UpdateAnotherUserRequest[firstName=$firstName, lastName=$lastName, mobile=$mobile, birthDay=$birthDay, userId=$userId, nicNumber=$nicNumber, ]';
  }

  UpdateAnotherUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
//     birthDay =
//
//
//       new DateTime.fromJson(json['birth_day'])
// ;
    userId = json['user_id'];
    nicNumber = json['nic_number'];
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'mobile': mobile,
      'birth_day': birthDay,
      'user_id': userId,
      'nic_number': nicNumber
    };
  }

  static List<UpdateAnotherUserRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UpdateAnotherUserRequest>()
        : json
            .map((value) => new UpdateAnotherUserRequest.fromJson(value))
            .toList();
  }

  static Map<String, UpdateAnotherUserRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateAnotherUserRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UpdateAnotherUserRequest.fromJson(value));
    }
    return map;
  }
}
