part of swagger.api;

class UserActivationRequest {
  
  Object contact = null;
  

  String code = null;
  
  UserActivationRequest();

  @override
  String toString() {
    return 'UserActivationRequest[contact=$contact, code=$code, ]';
  }

  UserActivationRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contact =
      
      
      new Object.fromJson(json['contact'])
;
    code =
        json['code']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'contact': contact,
      'code': code
     };
  }

  static List<UserActivationRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserActivationRequest>() : json.map((value) => new UserActivationRequest.fromJson(value)).toList();
  }

  static Map<String, UserActivationRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserActivationRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserActivationRequest.fromJson(value));
    }
    return map;
  }
}

