import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/app/app_provider.dart';
import '../../viewmodels/app/route_navigation_provider.dart';
import '../../viewmodels/app/text_theme_provider.dart';
import '../../viewmodels/home_provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppProvider()),
        ChangeNotifierProvider(create: (context) => RouteNavigationProvider()),
        ChangeNotifierProvider(create: (context) => TextThemeProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: child,
    );
  }
}
