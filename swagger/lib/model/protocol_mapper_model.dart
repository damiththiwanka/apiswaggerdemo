// @dart=2.9
part of swagger.api;

class ProtocolMapperModel {
  String schemaId = null;

  String protocolName = null;

  int protocolId = null;

  List<Object> variableMap = [];

  ProtocolMapperModel();

  @override
  String toString() {
    return 'ProtocolMapperModel[schemaId=$schemaId, protocolName=$protocolName, protocolId=$protocolId, variableMap=$variableMap, ]';
  }

  ProtocolMapperModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemaId = json['schema_id'];
    protocolName = json['protocol_name'];
    protocolId = json['protocol_id'];
//     variableMap =
//       Object.listFromJson(json['variable_map'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'schema_id': schemaId,
      'protocol_name': protocolName,
      'protocol_id': protocolId,
      'variable_map': variableMap
    };
  }

  static List<ProtocolMapperModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProtocolMapperModel>()
        : json.map((value) => new ProtocolMapperModel.fromJson(value)).toList();
  }

  static Map<String, ProtocolMapperModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtocolMapperModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProtocolMapperModel.fromJson(value));
    }
    return map;
  }
}
