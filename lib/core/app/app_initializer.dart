// import 'package:firebase_core/firebase_core.dart';
import '../../flutterarchitecture.dart';

// import '../theme/app_theme.dart';
// import '../../firebase_options.dart';
// import '../theme/app_theme/app_theme.dart'; // optional

class AppInitializer {
  static Future<void> initialize() async {
    await _initFirebase();
    await _initSharedPrefs();
    // _initTheme();
    // Add more initializations here
  }

  static Future<void> _initFirebase() async {
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
  }

  static Future<void> _initSharedPrefs() async {
    await SharedPreferences.getInstance();
  }

  // static void _initTheme() {
  //   AppTheme.init();
  // }
}
