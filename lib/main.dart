import 'package:flutter/material.dart';
import 'core/app/app.dart';
import 'core/app/app_initializer.dart';
import 'core/app/app_providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initialize();
  runApp(AppProviders(child: MyApp()));
}