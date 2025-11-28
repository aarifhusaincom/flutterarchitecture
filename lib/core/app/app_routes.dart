import '../../library.dart';
import '../../views/settings/font_setting_page.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String fontSettingPage = '/fontSettingPage';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case fontSettingPage:
        return MaterialPageRoute(builder: (_) => const FontSettingPage());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: CenterText('Route not found')),
          ),
        );
    }
  }
}
