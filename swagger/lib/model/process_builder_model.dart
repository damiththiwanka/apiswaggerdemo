// @dart=2.9
part of swagger.api;

class ProcessBuilderModel {
  String schemaId = null;

  String processType = null;

  String processStartsWhen = null;

  Object conditionMap = null;

  ProcessBuilderModel();

  @override
  String toString() {
    return 'ProcessBuilderModel[schemaId=$schemaId, processType=$processType, processStartsWhen=$processStartsWhen, conditionMap=$conditionMap, ]';
  }

  ProcessBuilderModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    schemaId = json['schema_id'];
    processType = json['process_type'];
    processStartsWhen = json['process_starts_when'];
//     conditionMap =
//
//
//       new Object.fromJson(json['condition_map'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'schema_id': schemaId,
      'process_type': processType,
      'process_starts_when': processStartsWhen,
      'condition_map': conditionMap
    };
  }

  static List<ProcessBuilderModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<ProcessBuilderModel>()
        : json.map((value) => new ProcessBuilderModel.fromJson(value)).toList();
  }

  static Map<String, ProcessBuilderModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProcessBuilderModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new ProcessBuilderModel.fromJson(value));
    }
    return map;
  }
}
