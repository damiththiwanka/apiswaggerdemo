// @dart=2.9
part of swagger.api;

class SchemaBuilderModel {
  String schemaName = null;

  String tag = null;

  String type = null;

  String description = null;

  String img = null;

  List<SchemaItem> schemaComponents = [];

  List<Object> schemaProcesses = [];

  SchemaBuilderModel();

  @override
  String toString() {
    return 'SchemaBuilderModel[schemaName=$schemaName, tag=$tag, type=$type, description=$description, img=$img, schemaComponents=$schemaComponents, schemaProcesses=$schemaProcesses, ]';
  }

  SchemaBuilderModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemaName = json['schema_name'];
    tag = json['tag'];
    type = json['type'];
    description = json['description'];
    img = json['img'];
    schemaComponents = SchemaItem.listFromJson(json['schema_components']);
//     schemaProcesses =
//       Object.listFromJson(json['schema_processes'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'schema_name': schemaName,
      'tag': tag,
      'type': type,
      'description': description,
      'img': img,
      'schema_components': schemaComponents,
      'schema_processes': schemaProcesses
    };
  }

  static List<SchemaBuilderModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<SchemaBuilderModel>()
        : json.map((value) => new SchemaBuilderModel.fromJson(value)).toList();
  }

  static Map<String, SchemaBuilderModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SchemaBuilderModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new SchemaBuilderModel.fromJson(value));
    }
    return map;
  }
}
