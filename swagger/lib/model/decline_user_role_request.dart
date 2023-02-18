part of swagger.api;

class DeclineUserRoleRequest {
  
  String userId = null;
  

  String roleId = null;
  
  DeclineUserRoleRequest();

  @override
  String toString() {
    return 'DeclineUserRoleRequest[userId=$userId, roleId=$roleId, ]';
  }

  DeclineUserRoleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['user_id']
    ;
    roleId =
        json['role_id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'role_id': roleId
     };
  }

  static List<DeclineUserRoleRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeclineUserRoleRequest>() : json.map((value) => new DeclineUserRoleRequest.fromJson(value)).toList();
  }

  static Map<String, DeclineUserRoleRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeclineUserRoleRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeclineUserRoleRequest.fromJson(value));
    }
    return map;
  }
}

