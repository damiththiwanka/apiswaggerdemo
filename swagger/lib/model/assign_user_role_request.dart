part of swagger.api;

class AssignUserRoleRequest {
  
  String userId = null;
  

  String roleId = null;
  

  DateTime expireDate = null;
  

  int serviceProviderId = null;
  
  AssignUserRoleRequest();

  @override
  String toString() {
    return 'AssignUserRoleRequest[userId=$userId, roleId=$roleId, expireDate=$expireDate, serviceProviderId=$serviceProviderId, ]';
  }

  AssignUserRoleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['user_id']
    ;
    roleId =
        json['role_id']
    ;
    expireDate = json['expire_date'] == null ? null : DateTime.parse(json['expire_date']);
    serviceProviderId =
        json['service_provider_id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'role_id': roleId,
      'expire_date': expireDate == null ? '' : expireDate.toUtc().toIso8601String(),
      'service_provider_id': serviceProviderId
     };
  }

  static List<AssignUserRoleRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<AssignUserRoleRequest>() : json.map((value) => new AssignUserRoleRequest.fromJson(value)).toList();
  }

  static Map<String, AssignUserRoleRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AssignUserRoleRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AssignUserRoleRequest.fromJson(value));
    }
    return map;
  }
}

