part of swagger.api;

class UpdateUserVehicle {
  
  String vehicleId = null;
  

  String manufactureName = null;
  

  String modelName = null;
  

  int modelYear = null;
   // range from 2000 to //

  String bodyType = null;
  

  String color = null;
  

  String connectorType = null;
  

  String powerLevel = null;
  

  String image = null;
  
  UpdateUserVehicle();

  @override
  String toString() {
    return 'UpdateUserVehicle[vehicleId=$vehicleId, manufactureName=$manufactureName, modelName=$modelName, modelYear=$modelYear, bodyType=$bodyType, color=$color, connectorType=$connectorType, powerLevel=$powerLevel, image=$image, ]';
  }

  UpdateUserVehicle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vehicleId =
        json['vehicle_id']
    ;
    manufactureName =
        json['manufacture_name']
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
    color =
        json['color']
    ;
    connectorType =
        json['connector_type']
    ;
    powerLevel =
        json['power_level']
    ;
    image =
        json['image']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'vehicle_id': vehicleId,
      'manufacture_name': manufactureName,
      'model_name': modelName,
      'model_year': modelYear,
      'body_type': bodyType,
      'color': color,
      'connector_type': connectorType,
      'power_level': powerLevel,
      'image': image
     };
  }

  static List<UpdateUserVehicle> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateUserVehicle>() : json.map((value) => new UpdateUserVehicle.fromJson(value)).toList();
  }

  static Map<String, UpdateUserVehicle> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateUserVehicle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateUserVehicle.fromJson(value));
    }
    return map;
  }
}

