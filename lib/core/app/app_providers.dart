import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/app/app_viewmodel.dart';
import '../../viewmodels/app/text_theme_provider.dart';
import '../../viewmodels/home_viewmodel.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppViewModel()),
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(create: (context) => TextThemeProvider()),
      ],
      child: child,
    );
  }
}
