// @dart=2.9
part of swagger.api;

class ComponentMappingModel {
  String schemaId = null;

  List<Object> componentMap = [];

  ComponentMappingModel();

  @override
  String toString() {
    return 'ComponentMappingModel[schemaId=$schemaId, componentMap=$componentMap, ]';
  }

  ComponentMappingModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemaId = json['schema_id'];
//     componentMap =
//       Object.listFromJson(json['component_map'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {'schema_id': schemaId, 'component_map': componentMap};
  }

  static List<ComponentMappingModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ComponentMappingModel>()
        : json
            .map((value) => new ComponentMappingModel.fromJson(value))
            .toList();
  }

  static Map<String, ComponentMappingModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ComponentMappingModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ComponentMappingModel.fromJson(value));
    }
    return map;
  }
}
