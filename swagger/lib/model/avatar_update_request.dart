part of swagger.api;

class AvatarUpdateRequest {
  
  String base64Image = null;
  
  AvatarUpdateRequest();

  @override
  String toString() {
    return 'AvatarUpdateRequest[base64Image=$base64Image, ]';
  }

  AvatarUpdateRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    base64Image =
        json['base64_image']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'base64_image': base64Image
     };
  }

  static List<AvatarUpdateRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<AvatarUpdateRequest>() : json.map((value) => new AvatarUpdateRequest.fromJson(value)).toList();
  }

  static Map<String, AvatarUpdateRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AvatarUpdateRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AvatarUpdateRequest.fromJson(value));
    }
    return map;
  }
}

