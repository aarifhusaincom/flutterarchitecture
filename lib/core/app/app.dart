import '../../library.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeProvider = Provider.of<AppThemeProvider>(context);
    final fontSizeProvider = Provider.of<FontSizeProvider>(context);
    // final textThemeProvider = Provider.of<TextThemeProvider>(context);
    log("MaterialApp build");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:
          // textThemeProvider.isCustomTextTheme
          //     ? 'Flutter MVVM'
          //     :
          'Flutter MVVM',
      // ---- APPLY FONT SCALE ----
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(fontSizeProvider.scale)),
          child: Theme(
            data: Theme.of(context).copyWith(
              textTheme: Theme.of(
                context,
              ).textTheme.apply(fontSizeFactor: fontSizeProvider.scale),
            ),
            child: child!,
          ),
        );
      },
      // ---------------------------
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      themeMode: appThemeProvider.themeMode,
      navigatorKey: AppKeys.navigatorKey,
      scaffoldMessengerKey: AppKeys.scaffoldMessengerKey,
      // locale: context.locale,
      // supportedLocales: context.supportedLocales,
      // localizationsDelegates: context.localizationDelegates,
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
