// @dart=2.9
part of swagger.api;

class CollectionBuilderModel {
  String collectionType = null;

  String collectionName = null;

  List<Object> collectionObjectList = [];

  CollectionBuilderModel();

  @override
  String toString() {
    return 'CollectionBuilderModel[collectionType=$collectionType, collectionName=$collectionName, collectionObjectList=$collectionObjectList, ]';
  }

  CollectionBuilderModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    collectionType = json['collection_type'];
    collectionName = json['collection_name'];
//     collectionObjectList =
//       Object.listFromJson(json['collection_object_list'])
// ;
  }

  Map<String, dynamic> toJson() {
    return {
      'collection_type': collectionType,
      'collection_name': collectionName,
      'collection_object_list': collectionObjectList
    };
  }

  static List<CollectionBuilderModel> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<CollectionBuilderModel>()
        : json
            .map((value) => new CollectionBuilderModel.fromJson(value))
            .toList();
  }

  static Map<String, CollectionBuilderModel> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CollectionBuilderModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new CollectionBuilderModel.fromJson(value));
    }
    return map;
  }
}
