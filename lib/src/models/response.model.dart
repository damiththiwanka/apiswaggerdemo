class ResponseModel {
  int status = 400;
  String message = "";
  dynamic data;

  ResponseModel({ required this.status, required this.message, this.data });
}
