part of swagger.api;

class VisitRequest {
  
  String userId = null;
  
  VisitRequest();

  @override
  String toString() {
    return 'VisitRequest[userId=$userId, ]';
  }

  VisitRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['user_id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId
     };
  }

  static List<VisitRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<VisitRequest>() : json.map((value) => new VisitRequest.fromJson(value)).toList();
  }

  static Map<String, VisitRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VisitRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VisitRequest.fromJson(value));
    }
    return map;
  }
}

