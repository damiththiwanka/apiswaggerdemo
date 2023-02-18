part of swagger.api;

class ComponentType {
  
  String name = null;
  

  String instance = null;
  

  EVSEType evse = null;
  
  ComponentType();

  @override
  String toString() {
    return 'ComponentType[name=$name, instance=$instance, evse=$evse, ]';
  }

  ComponentType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    instance =
        json['instance']
    ;
    evse =
      
      
      new EVSEType.fromJson(json['evse'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'instance': instance,
      'evse': evse
     };
  }

  static List<ComponentType> listFromJson(List<dynamic> json) {
    return json == null ? new List<ComponentType>() : json.map((value) => new ComponentType.fromJson(value)).toList();
  }

  static Map<String, ComponentType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ComponentType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ComponentType.fromJson(value));
    }
    return map;
  }
}

