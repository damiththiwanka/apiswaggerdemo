import 'package:base3/src/models/user.dart';

/// Project MadayaS
/// Create by Madushanka Madakumbura on 11/8/21 13:15
class UserRepository {
  User? _user;

  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
          () => _user = User("User"),
    );
  }
}
