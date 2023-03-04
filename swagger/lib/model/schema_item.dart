// @dart=2.9
part of swagger.api;

class SchemaItem {
  String type = null;

  String dataType = null;

  String name = null;

  String description = null;

  List<Object> value = [];

  SchemaItem();

  @override
  String toString() {
    return 'SchemaItem[type=$type, dataType=$dataType, name=$name, description=$description, value=$value, ]';
  }

  SchemaItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    dataType = json['data_type'];
    name = json['name'];
    description = json['description'];
//     value =
//       Object.listFromJson(json['value'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'data_type': dataType,
      'name': name,
      'description': description,
      'value': value
    };
  }

  static List<SchemaItem> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SchemaItem>()
        : json.map((value) => new SchemaItem.fromJson(value)).toList();
  }

  static Map<String, SchemaItem> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SchemaItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SchemaItem.fromJson(value));
    }
    return map;
  }
}
