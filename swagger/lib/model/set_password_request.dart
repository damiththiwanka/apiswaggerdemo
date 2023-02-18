part of swagger.api;

class SetPasswordRequest {
  
  String uid = null;
  

  String code = null;
  

  String newPassword = null;
  

  String confirmPassword = null;
  
  SetPasswordRequest();

  @override
  String toString() {
    return 'SetPasswordRequest[uid=$uid, code=$code, newPassword=$newPassword, confirmPassword=$confirmPassword, ]';
  }

  SetPasswordRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uid =
        json['uid']
    ;
    code =
        json['code']
    ;
    newPassword =
        json['new_password']
    ;
    confirmPassword =
        json['confirm_password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'code': code,
      'new_password': newPassword,
      'confirm_password': confirmPassword
     };
  }

  static List<SetPasswordRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<SetPasswordRequest>() : json.map((value) => new SetPasswordRequest.fromJson(value)).toList();
  }

  static Map<String, SetPasswordRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SetPasswordRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SetPasswordRequest.fromJson(value));
    }
    return map;
  }
}

