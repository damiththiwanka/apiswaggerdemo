// @dart=2.9
part of swagger.api;

class ObjectBuilderModel {
  String schemaId = null;

  String objectName = null;

  String tag = null;

  String img = null;

  String description = null;

  Object objectComponents = null;

  List<Object> objectProcesses = [];

  ObjectBuilderModel();

  @override
  String toString() {
    return 'ObjectBuilderModel[schemaId=$schemaId, objectName=$objectName, tag=$tag, img=$img, description=$description, objectComponents=$objectComponents, objectProcesses=$objectProcesses, ]';
  }

  ObjectBuilderModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemaId = json['schema_id'];
    objectName = json['object_name'];
    tag = json['tag'];
    img = json['img'];
    description = json['description'];
//     objectComponents =
//
//
//       new Object.fromJson(json['object_components'])
// ;
//     objectProcesses =
//       Object.listFromJson(json['object_processes'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'schema_id': schemaId,
      'object_name': objectName,
      'tag': tag,
      'img': img,
      'description': description,
      'object_components': objectComponents,
      'object_processes': objectProcesses
    };
  }

  static List<ObjectBuilderModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ObjectBuilderModel>()
        : json.map((value) => new ObjectBuilderModel.fromJson(value)).toList();
  }

  static Map<String, ObjectBuilderModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectBuilderModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ObjectBuilderModel.fromJson(value));
    }
    return map;
  }
}
