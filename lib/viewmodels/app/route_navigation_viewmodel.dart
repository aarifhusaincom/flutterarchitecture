import 'package:flutter/material.dart';

import '../../core/app/app_keys.dart';

/// Navigation Use (Anywhere, without context)
/// context.read<NavigationProvider>().pushReplace(AppRoutes.home);
/// context.read<NavigationProvider>().push(AppRoutes.login);

class RouteNavigationViewmodel with ChangeNotifier {
  // Push by route name
  void push(String routeName) {
    AppKeys.navigatorKey.currentState!.pushNamed(routeName);
  }

  // Replace Screen
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
    AppKeys.navigatorKey.currentState!.canPop();
  }

  // Push And Remove Until
  void pushAndRemoveUntil(String routeName) {
    AppKeys.navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }
}
