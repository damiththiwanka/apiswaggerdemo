part of swagger.api;

class NewVehicleModel {
  /* Unique id of the manufacturer */
  String manufactureId = null;
  

  String modelName = null;
  

  int modelYear = null;
   // range from 2000 to //

  String bodyType = null;
  
  NewVehicleModel();

  @override
  String toString() {
    return 'NewVehicleModel[manufactureId=$manufactureId, modelName=$modelName, modelYear=$modelYear, bodyType=$bodyType, ]';
  }

  NewVehicleModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    manufactureId =
        json['manufacture_id']
    ;
    modelName =
        json['model_name']
    ;
    modelYear =
        json['model_year']
    ;
    bodyType =
        json['body_type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'manufacture_id': manufactureId,
      'model_name': modelName,
      'model_year': modelYear,
      'body_type': bodyType
     };
  }

  static List<NewVehicleModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewVehicleModel>() : json.map((value) => new NewVehicleModel.fromJson(value)).toList();
  }

  static Map<String, NewVehicleModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewVehicleModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewVehicleModel.fromJson(value));
    }
    return map;
  }
}

