// @dart=2.9
part of swagger.api;

class CreateNewUserRequest {
  String firstName = null;

  String lastName = null;

  int mobile = null;

  String email = null;

  DateTime birthDay = null;

  String nicNumber = null;

  List<UserRoleAssignment> userRoles = [];

  int serviceProviderId = null;

  CreateNewUserRequest();

  @override
  String toString() {
    return 'CreateNewUserRequest[firstName=$firstName, lastName=$lastName, mobile=$mobile, email=$email, birthDay=$birthDay, nicNumber=$nicNumber, userRoles=$userRoles, serviceProviderId=$serviceProviderId, ]';
  }

  CreateNewUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    email = json['email'];
//     birthDay =
//
//
//       new DateTime.fromJson(json['birth_day'])
// ;
    nicNumber = json['nic_number'];
    userRoles = UserRoleAssignment.listFromJson(json['user_roles']);
    serviceProviderId = json['service_provider_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'mobile': mobile,
      'email': email,
      'birth_day': birthDay,
      'nic_number': nicNumber,
      'user_roles': userRoles,
      'service_provider_id': serviceProviderId
    };
  }

  static List<CreateNewUserRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CreateNewUserRequest>()
        : json
            .map((value) => new CreateNewUserRequest.fromJson(value))
            .toList();
  }

  static Map<String, CreateNewUserRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateNewUserRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CreateNewUserRequest.fromJson(value));
    }
    return map;
  }
}
