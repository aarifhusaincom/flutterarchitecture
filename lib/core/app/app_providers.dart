import '../../flutterarchitecture.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppAuthProvider()),
        ChangeNotifierProvider(create: (context) => RouteNavigationProvider()),
        ChangeNotifierProvider(create: (context) => TextThemeProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: child,
    );
  }
}
