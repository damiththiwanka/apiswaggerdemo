// import 'package:base3/src/helpers/http/http.helper.dart';
// import 'package:base3/src/models/response.model.dart';
// import 'package:base3/src/models/user.model.dart';
// import './base/endpoints.dart' as Endpoints;
//
// class UserApiProvider{
//   Future<ResponseModel> list() async {
//     ResponseModel response = ResponseModel(message: '', status: 200);
//     List<UserModel> user;
//
//     final String url = Endpoints.myList.list;
//
//     final ret= HttpHelper.get(url);
//
//     await ret.then((res) {
//       user = UserModel.fromJsonList(res.data);
//
//       response.status = res.statusCode!;
//       response.data = user;
//       response.message = res.statusMessage!;
//     })
//     .catchError((e) {
//       print("e -> $e");
//
//       response.status = 500;
//       response.data = e;
//       response.message = "Server Error";
//     });
//
//     return response;
//   }
// }
