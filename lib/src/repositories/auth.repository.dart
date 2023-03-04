// import 'package:base3/src/helpers/connection.helper.dart';
// import 'package:base3/src/models/response.model.dart';
// import 'package:base3/src/repositories/sources/network/auth.service.dart';
//
// class AuthRepository {
//   AuthService api = AuthService();
//
//   Future<ResponseModel> login(String login, String senha) async {
//     ResponseModel response = ResponseModel(status: 200, message: '');
//
//     final hasConnection = await ConnectionHelper.hasConnection();
//
//     if (hasConnection) {
//       response = await this.api.login(login, senha);
//     } else {
//       response.message = "Device offline";
//     }
//
//     return response;
//   }
// }
