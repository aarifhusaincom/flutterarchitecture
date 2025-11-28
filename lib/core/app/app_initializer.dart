import '../../library.dart';
// import '../theme/app_theme/app_theme.dart'; // optional

class AppInitializer {
  static Future<void> initialize() async {
    await HiveService.init();
    await _initFirebase();
    await _initSharedPrefs();
    await GoogleFontsCacheCleaner.cleanKeepLast(keep: 5);
    // _initTheme();
  }

  static Future<void> _initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> _initSharedPrefs() async {
    await SharedPreferences.getInstance();
  }

  // static void _initTheme() {
  //   AppTheme.init();
  // }
}
