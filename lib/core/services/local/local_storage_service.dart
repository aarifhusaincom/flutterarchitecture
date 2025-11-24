import '../../../flutterarchitecture.dart';

class LocalStorageService {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> saveToken(String token) async {
    await _prefs.setString('token', token);
  }

  static String? getToken() => _prefs.getString('token');

  static Future<void> clear() async {
    await _prefs.clear();
  }
}
