part of swagger.api;

class PasswordReset {
  
  String newPassword = null;
  

  String confirmPassword = null;
  
  PasswordReset();

  @override
  String toString() {
    return 'PasswordReset[newPassword=$newPassword, confirmPassword=$confirmPassword, ]';
  }

  PasswordReset.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    newPassword =
        json['new_password']
    ;
    confirmPassword =
        json['confirm_password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'new_password': newPassword,
      'confirm_password': confirmPassword
     };
  }

  static List<PasswordReset> listFromJson(List<dynamic> json) {
    return json == null ? new List<PasswordReset>() : json.map((value) => new PasswordReset.fromJson(value)).toList();
  }

  static Map<String, PasswordReset> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PasswordReset>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PasswordReset.fromJson(value));
    }
    return map;
  }
}

