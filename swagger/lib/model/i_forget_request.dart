part of swagger.api;

class IForgetRequest {
  
  Object username = null;
  

  CountryCodes countryCode = null;
  
  IForgetRequest();

  @override
  String toString() {
    return 'IForgetRequest[username=$username, countryCode=$countryCode, ]';
  }

  IForgetRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
      
      
      new Object.fromJson(json['username'])
;
    countryCode =
      
      
      new CountryCodes.fromJson(json['country_code'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'country_code': countryCode
     };
  }

  static List<IForgetRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<IForgetRequest>() : json.map((value) => new IForgetRequest.fromJson(value)).toList();
  }

  static Map<String, IForgetRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IForgetRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IForgetRequest.fromJson(value));
    }
    return map;
  }
}

