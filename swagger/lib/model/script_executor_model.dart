// @dart=2.9
part of swagger.api;

class ScriptExecutorModel {
  String objectId = null;

  String scriptId = null;

  List<Object> scriptParams = [];

  ScriptExecutorModel();

  @override
  String toString() {
    return 'ScriptExecutorModel[objectId=$objectId, scriptId=$scriptId, scriptParams=$scriptParams, ]';
  }

  ScriptExecutorModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    objectId = json['object_id'];
    scriptId = json['script_id'];
//     scriptParams =
//       Object.listFromJson(json['script_params'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'object_id': objectId,
      'script_id': scriptId,
      'script_params': scriptParams
    };
  }

  static List<ScriptExecutorModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ScriptExecutorModel>()
        : json.map((value) => new ScriptExecutorModel.fromJson(value)).toList();
  }

  static Map<String, ScriptExecutorModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScriptExecutorModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ScriptExecutorModel.fromJson(value));
    }
    return map;
  }
}
