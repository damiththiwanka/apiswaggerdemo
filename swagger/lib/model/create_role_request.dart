part of swagger.api;

class CreateRoleRequest {
  
  String name = null;
  
  CreateRoleRequest();

  @override
  String toString() {
    return 'CreateRoleRequest[name=$name, ]';
  }

  CreateRoleRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<CreateRoleRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateRoleRequest>() : json.map((value) => new CreateRoleRequest.fromJson(value)).toList();
  }

  static Map<String, CreateRoleRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateRoleRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateRoleRequest.fromJson(value));
    }
    return map;
  }
}

