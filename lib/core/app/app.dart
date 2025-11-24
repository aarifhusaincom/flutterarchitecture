import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/app/app_provider.dart';
import '../theme/app_theme/app_theme.dart';
import 'app_keys.dart';
import 'app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MVVM Boilerplate',
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      themeMode: appProvider.themeMode,
      navigatorKey: AppKeys.navigatorKey,
      // locale: context.locale,
      // supportedLocales: context.supportedLocales,
      // localizationsDelegates: context.localizationDelegates,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
