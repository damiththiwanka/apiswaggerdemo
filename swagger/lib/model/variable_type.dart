// @dart=2.9
part of swagger.api;

class VariableType {
  String name = null;

  VariableType();

  @override
  String toString() {
    return 'VariableType[name=$name, ]';
  }

  VariableType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }

  static List<VariableType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<VariableType>()
        : json.map((value) => new VariableType.fromJson(value)).toList();
  }

  static Map<String, VariableType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariableType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new VariableType.fromJson(value));
    }
    return map;
  }
}
