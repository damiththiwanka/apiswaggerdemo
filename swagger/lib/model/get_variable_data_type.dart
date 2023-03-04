// @dart=2.9
part of swagger.api;

class GetVariableDataType {
  String attributeType = null;

  ComponentType component = null;

  VariableType variable = null;

  GetVariableDataType();

  @override
  String toString() {
    return 'GetVariableDataType[attributeType=$attributeType, component=$component, variable=$variable, ]';
  }

  GetVariableDataType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attributeType = json['attributeType'];
    component = new ComponentType.fromJson(json['component']);
    variable = new VariableType.fromJson(json['variable']);
  }

  Map<String, dynamic> toJson() {
    return {
      'attributeType': attributeType,
      'component': component,
      'variable': variable
    };
  }

  static List<GetVariableDataType> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GetVariableDataType>()
        : json.map((value) => new GetVariableDataType.fromJson(value)).toList();
  }

  static Map<String, GetVariableDataType> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetVariableDataType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GetVariableDataType.fromJson(value));
    }
    return map;
  }
}
