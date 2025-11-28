import '../../library.dart';

class AppMessengerProvider extends ChangeNotifier {
  void showSnackBar(String message, {
    BuildContext? context,
    Color? backgroundColor,
    Duration duration = const Duration(seconds: 2),
  }) {
    final messenger = AppKeys.scaffoldMessengerKey.currentState;
    if (messenger == null) return;

    // Fallback context (navigatorKey ka context)
    final ctx = context ?? AppKeys.navigatorKey.currentContext;

    if (ctx == null) return;

    messenger
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: CenterText(message),
          backgroundColor: backgroundColor ?? Theme
              .of(ctx)
              .colorScheme
              .surface,
          duration: duration,
        ),
      );
  }
}
