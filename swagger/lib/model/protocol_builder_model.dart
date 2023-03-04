// @dart=2.9
part of swagger.api;

class ProtocolBuilderModel {
  String protocolName = null;

  int protocolId = null;

  ProtocolBuilderModel();

  @override
  String toString() {
    return 'ProtocolBuilderModel[protocolName=$protocolName, protocolId=$protocolId, ]';
  }

  ProtocolBuilderModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    protocolName = json['protocol_name'];
    protocolId = json['protocol_id'];
  }

  Map<String, dynamic> toJson() {
    return {'protocol_name': protocolName, 'protocol_id': protocolId};
  }

  static List<ProtocolBuilderModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProtocolBuilderModel>()
        : json
            .map((value) => new ProtocolBuilderModel.fromJson(value))
            .toList();
  }

  static Map<String, ProtocolBuilderModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProtocolBuilderModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProtocolBuilderModel.fromJson(value));
    }
    return map;
  }
}
