import 'package:flutter/material.dart';
import '../constants/app_keys.dart';
import '../routes/app_routes.dart';

class NavigationProvider with ChangeNotifier {
  // Push by route name
  void push(String routeName) {
    AppKeys.navigatorKey.currentState!.pushNamed(routeName);
  }

  // Replace screen
  void pushReplace(String routeName) {
    AppKeys.navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  // Push and remove all
  void pushAndRemove(String routeName) {
    AppKeys.navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }

  // Pop
  void pop() {
    AppKeys.navigatorKey.currentState!.pop();
  }
}