part of swagger.api;

class UserRegisterRequest {
  
  String firstName = null;
  

  String lastName = null;
  

  int mobile = null;
  

  String email = null;
  

  CountryCodes countryCode = null;
  

  DateTime birthDay = null;
  

  String password = null;
  

  String nicNumber = null;
  
  UserRegisterRequest();

  @override
  String toString() {
    return 'UserRegisterRequest[firstName=$firstName, lastName=$lastName, mobile=$mobile, email=$email, countryCode=$countryCode, birthDay=$birthDay, password=$password, nicNumber=$nicNumber, ]';
  }

  UserRegisterRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    firstName =
        json['first_name']
    ;
    lastName =
        json['last_name']
    ;
    mobile =
        json['mobile']
    ;
    email =
        json['email']
    ;
    countryCode =
      
      
      new CountryCodes.fromJson(json['country_code'])
;
    birthDay =
      
      
      new DateTime.fromJson(json['birth_day'])
;
    password =
        json['password']
    ;
    nicNumber =
        json['nic_number']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'mobile': mobile,
      'email': email,
      'country_code': countryCode,
      'birth_day': birthDay,
      'password': password,
      'nic_number': nicNumber
     };
  }

  static List<UserRegisterRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserRegisterRequest>() : json.map((value) => new UserRegisterRequest.fromJson(value)).toList();
  }

  static Map<String, UserRegisterRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserRegisterRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserRegisterRequest.fromJson(value));
    }
    return map;
  }
}

