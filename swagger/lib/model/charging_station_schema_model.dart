part of swagger.api;

class ChargingStationSchemaModel {
  
  String chargingStationCollectionId = null;
  

  List<Object> evseCollectionIdList = [];
  

  String modelNumber = null;
  

  String firmwareVersion = null;
  

  String description = null;
  
  ChargingStationSchemaModel();

  @override
  String toString() {
    return 'ChargingStationSchemaModel[chargingStationCollectionId=$chargingStationCollectionId, evseCollectionIdList=$evseCollectionIdList, modelNumber=$modelNumber, firmwareVersion=$firmwareVersion, description=$description, ]';
  }

  ChargingStationSchemaModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    chargingStationCollectionId =
        json['charging_station_collection_id']
    ;
    evseCollectionIdList =
      Object.listFromJson(json['evse_collection_id_list'])
;
    modelNumber =
        json['model_number']
    ;
    firmwareVersion =
        json['firmware_version']
    ;
    description =
        json['description']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'charging_station_collection_id': chargingStationCollectionId,
      'evse_collection_id_list': evseCollectionIdList,
      'model_number': modelNumber,
      'firmware_version': firmwareVersion,
      'description': description
     };
  }

  static List<ChargingStationSchemaModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChargingStationSchemaModel>() : json.map((value) => new ChargingStationSchemaModel.fromJson(value)).toList();
  }

  static Map<String, ChargingStationSchemaModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChargingStationSchemaModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChargingStationSchemaModel.fromJson(value));
    }
    return map;
  }
}

