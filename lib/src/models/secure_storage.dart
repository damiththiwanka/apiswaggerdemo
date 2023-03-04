import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static SecureStorage? _instance;
  static FlutterSecureStorage? flutterSecureStorage;
  SecureStorage._internal();

  factory SecureStorage() {
    if (_instance == null) {
      flutterSecureStorage = FlutterSecureStorage();
      _instance = SecureStorage._internal();
    }
    return _instance!;
  }

  get getSecureStorage {
    return flutterSecureStorage;
  }


  static Future<SecureStorage?> get instance async {


    return _instance;
  }

}
