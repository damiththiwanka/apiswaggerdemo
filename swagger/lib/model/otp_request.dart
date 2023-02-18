part of swagger.api;

class OTPRequest {
  
  String registeredEmail = null;
  
  OTPRequest();

  @override
  String toString() {
    return 'OTPRequest[registeredEmail=$registeredEmail, ]';
  }

  OTPRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    registeredEmail =
        json['registered_email']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'registered_email': registeredEmail
     };
  }

  static List<OTPRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<OTPRequest>() : json.map((value) => new OTPRequest.fromJson(value)).toList();
  }

  static Map<String, OTPRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OTPRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OTPRequest.fromJson(value));
    }
    return map;
  }
}

