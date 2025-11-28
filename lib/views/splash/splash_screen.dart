import '../../library.dart';

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
    // final authProvider = Provider.of<AppAuthProvider>(context, listen: false);
    final routeNavigationProvider = Provider.of<RouteNavigationProvider>(
      context,
      listen: false,
    );

    await Future.delayed(const Duration(seconds: 3));
    routeNavigationProvider.pushReplace(AppRoutes.home);
    // if (authProvider.user != null) {
    //   routeNavigationProvider.pushReplace(AppRoutes.home);
    // } else {
    //   routeNavigationProvider.pushReplace(AppRoutes.login);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
