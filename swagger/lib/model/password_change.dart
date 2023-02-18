part of swagger.api;

class PasswordChange {
  
  String oldPassword = null;
  

  String newPassword = null;
  

  String confirmPassword = null;
  
  PasswordChange();

  @override
  String toString() {
    return 'PasswordChange[oldPassword=$oldPassword, newPassword=$newPassword, confirmPassword=$confirmPassword, ]';
  }

  PasswordChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    oldPassword =
        json['old_password']
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
      'old_password': oldPassword,
      'new_password': newPassword,
      'confirm_password': confirmPassword
     };
  }

  static List<PasswordChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<PasswordChange>() : json.map((value) => new PasswordChange.fromJson(value)).toList();
  }

  static Map<String, PasswordChange> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PasswordChange>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PasswordChange.fromJson(value));
    }
    return map;
  }
}

