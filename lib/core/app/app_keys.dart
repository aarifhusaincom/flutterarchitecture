import '../../library.dart';

class AppKeys {
  // 🔹 Navigation Key (for navigator 1.0)
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // 🔹 Scaffold Key for opening/closing Drawer, BottomSheet etc.
  // (showing SnackBars using ScaffoldState is old and discouraged)
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  // 🔹 This key is used to show SnackBars..
  static final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  // 🔹 Form Keys
  static final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  static final GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // 🔹 Any other custom keys
  static final GlobalKey searchBarKey = GlobalKey();
  static final GlobalKey homePageKey = GlobalKey();
}
