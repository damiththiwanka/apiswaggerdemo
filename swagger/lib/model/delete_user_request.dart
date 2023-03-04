// @dart=2.9
part of swagger.api;

class DeleteUserRequest {
  String password = null;

  int whyDeactivate = null;
  //enum whyDeactivateEnum {  };

  String otherMessage = null;

  DeleteUserRequest();

  @override
  String toString() {
    return 'DeleteUserRequest[password=$password, whyDeactivate=$whyDeactivate, otherMessage=$otherMessage, ]';
  }

  DeleteUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    password = json['password'];
    whyDeactivate = json['why_deactivate'];
    otherMessage = json['other_message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'why_deactivate': whyDeactivate,
      'other_message': otherMessage
    };
  }

  static List<DeleteUserRequest> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<DeleteUserRequest>()
        : json.map((value) => new DeleteUserRequest.fromJson(value)).toList();
  }

  static Map<String, DeleteUserRequest> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeleteUserRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new DeleteUserRequest.fromJson(value));
    }
    return map;
  }
}
