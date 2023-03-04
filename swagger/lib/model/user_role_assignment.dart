// @dart=2.9
part of swagger.api;

class UserRoleAssignment {
  String id = null;

  DateTime expireDate = null;

  UserRoleAssignment();

  @override
  String toString() {
    return 'UserRoleAssignment[id=$id, expireDate=$expireDate, ]';
  }

  UserRoleAssignment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    expireDate = json['expire_date'] == null
        ? null
        : DateTime.parse(json['expire_date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'expire_date':
          expireDate == null ? '' : expireDate.toUtc().toIso8601String()
    };
  }

  static List<UserRoleAssignment> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<UserRoleAssignment>()
        : json.map((value) => new UserRoleAssignment.fromJson(value)).toList();
  }

  static Map<String, UserRoleAssignment> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserRoleAssignment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new UserRoleAssignment.fromJson(value));
    }
    return map;
  }
}
