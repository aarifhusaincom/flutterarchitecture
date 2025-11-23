import 'package:flutter/material.dart';

class AppKeys {
  // 🔹 Navigation Key (for navigator 1.0)
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // 🔹 Scaffold Key for showing SnackBars, Drawer etc.
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  // 🔹 Form Keys
  static final GlobalKey<FormState> loginFormKey =
      GlobalKey<FormState>();

  static final GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>();

  // 🔹 Any other custom keys
  static final GlobalKey searchBarKey = GlobalKey();
  static final GlobalKey homePageKey = GlobalKey();
}