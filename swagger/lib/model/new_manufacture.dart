// @dart=2.9
part of swagger.api;

class NewManufacture {
  String manufactureName = null;

  String manufactureLogo = null;

  String countryOfOrigin = null;

  NewManufacture();

  @override
  String toString() {
    return 'NewManufacture[manufactureName=$manufactureName, manufactureLogo=$manufactureLogo, countryOfOrigin=$countryOfOrigin, ]';
  }

  NewManufacture.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    manufactureName = json['manufacture_name'];
    manufactureLogo = json['manufacture_logo'];
    countryOfOrigin = json['country_of_origin'];
  }

  Map<String, dynamic> toJson() {
    return {
      'manufacture_name': manufactureName,
      'manufacture_logo': manufactureLogo,
      'country_of_origin': countryOfOrigin
    };
  }

  static List<NewManufacture> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<NewManufacture>()
        : json.map((value) => new NewManufacture.fromJson(value)).toList();
  }

  static Map<String, NewManufacture> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NewManufacture>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new NewManufacture.fromJson(value));
    }
    return map;
  }
}
