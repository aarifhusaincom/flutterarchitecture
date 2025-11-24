import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/app/app_routes.dart';
import '../../viewmodels/app/route_navigation_provider.dart';
import '../../viewmodels/auth_provider.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _goNext();
  }

  Future<void> _goNext() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    final routeNavigationProvider = Provider.of<RouteNavigationProvider>(
      context,
      listen: false,
    );

    await Future.delayed(const Duration(seconds: 3));

    if (authProvider.user != null) {
      routeNavigationProvider.pushReplace(AppRoutes.home);
    } else {
      routeNavigationProvider.pushReplace(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
