part of swagger.api;

class ScriptBuilderModel {
  
  String schemaId = null;
  

  String scriptName = null;
  

  List<Object> scriptParams = [];
  

  List<Object> script = [];
  
  ScriptBuilderModel();

  @override
  String toString() {
    return 'ScriptBuilderModel[schemaId=$schemaId, scriptName=$scriptName, scriptParams=$scriptParams, script=$script, ]';
  }

  ScriptBuilderModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemaId =
        json['schema_id']
    ;
    scriptName =
        json['script_name']
    ;
    scriptParams =
      Object.listFromJson(json['script_params'])
;
    script =
      Object.listFromJson(json['script'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'schema_id': schemaId,
      'script_name': scriptName,
      'script_params': scriptParams,
      'script': script
     };
  }

  static List<ScriptBuilderModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScriptBuilderModel>() : json.map((value) => new ScriptBuilderModel.fromJson(value)).toList();
  }

  static Map<String, ScriptBuilderModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScriptBuilderModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScriptBuilderModel.fromJson(value));
    }
    return map;
  }
}

