part of swagger.api;

class NewVehicle {
  
  String userId = null;
  

  String manufactureName = null;
  

  String modelName = null;
  

  int modelYear = null;
   // range from 2000 to //

  String bodyType = null;
  

  String color = null;
  

  String connectorType = null;
  

  String powerLevel = null;
  

  String image = null;
  
  NewVehicle();

  @override
  String toString() {
    return 'NewVehicle[userId=$userId, manufactureName=$manufactureName, modelName=$modelName, modelYear=$modelYear, bodyType=$bodyType, color=$color, connectorType=$connectorType, powerLevel=$powerLevel, image=$image, ]';
  }

  NewVehicle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['user_id']
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
      'user_id': userId,
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

  static List<NewVehicle> listFromJson(List<dynamic> json) {
    return json == null ? new List<NewVehicle>() : json.map((value) => new NewVehicle.fromJson(value)).toList();
  }

  static Map<String, NewVehicle> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewVehicle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NewVehicle.fromJson(value));
    }
    return map;
  }
}

