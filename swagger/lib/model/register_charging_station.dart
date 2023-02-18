part of swagger.api;

class RegisterChargingStation {
  
  String chargingStationSchemaId = null;
  

  Object chargingStationData = null;
  

  String longitude = null;
  

  String latitude = null;
  
  RegisterChargingStation();

  @override
  String toString() {
    return 'RegisterChargingStation[chargingStationSchemaId=$chargingStationSchemaId, chargingStationData=$chargingStationData, longitude=$longitude, latitude=$latitude, ]';
  }

  RegisterChargingStation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    chargingStationSchemaId =
        json['charging_station_schema_id']
    ;
    chargingStationData =
      
      
      new Object.fromJson(json['charging_station_data'])
;
    longitude =
        json['longitude']
    ;
    latitude =
        json['latitude']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'charging_station_schema_id': chargingStationSchemaId,
      'charging_station_data': chargingStationData,
      'longitude': longitude,
      'latitude': latitude
     };
  }

  static List<RegisterChargingStation> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegisterChargingStation>() : json.map((value) => new RegisterChargingStation.fromJson(value)).toList();
  }

  static Map<String, RegisterChargingStation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegisterChargingStation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegisterChargingStation.fromJson(value));
    }
    return map;
  }
}

