part of swagger.api;

class EVSEType {
  
  int id = null;
  
  EVSEType();

  @override
  String toString() {
    return 'EVSEType[id=$id, ]';
  }

  EVSEType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<EVSEType> listFromJson(List<dynamic> json) {
    return json == null ? new List<EVSEType>() : json.map((value) => new EVSEType.fromJson(value)).toList();
  }

  static Map<String, EVSEType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EVSEType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EVSEType.fromJson(value));
    }
    return map;
  }
}

