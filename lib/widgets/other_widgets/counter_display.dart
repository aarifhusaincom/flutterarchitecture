import '../../library.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final textThemeProvider = Provider.of<TextThemeProvider>(context);
    final homeProvider = context.watch<HomeProvider>();
    final appThemeProvider = context.read<AppThemeProvider>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20,
      children: [
        CenterText(
          appGoogleFont[homeProvider.currentRandomNumber],
          style: Theme.of(context).textTheme.titleMedium,
        ),
        CenterText(
          'Jackdaws love my big sphinx of quartz.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        CenterText(
          'Aarif loves Shaina',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        CenterText(
          '${homeProvider.counter}',
          style: Theme.of(
            context,
          ).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () {
            textThemeProvider.isCustomTextTheme =
                !textThemeProvider.isCustomTextTheme;
            log("Toggle textTheme - ${textThemeProvider.isCustomTextTheme}");
            print(Theme.of(context).textTheme.bodyMedium);
          },
          child: CenterText(
            "Toggle textTheme (${textThemeProvider.isCustomTextTheme})",
          ),
        ),

        ElevatedButton(
          onPressed: () {
            homeProvider.getRandomNumber();
            homeProvider.counter = homeProvider.currentRandomNumber;
            textThemeProvider.changeFonts(
              bodyFont: appGoogleFont[homeProvider.currentRandomNumber],
              displayFont: appGoogleFont[homeProvider.currentRandomNumber],
            );
            log(
              "isCustomTextTheme status - ${textThemeProvider.isCustomTextTheme}",
            );
          },
          child: CenterText("Try Random Font"),
        ),
        // ElevatedButton(
        //   onPressed: () async {
        //     await textThemeProvider.cleanOldGoogleFontsCache();
        //   },
        //   child: CenterText("Clear Font cache"),
        // ),
        ElevatedButton(
          onPressed: () {
            appThemeProvider.toggleTheme();
            Navigator.pushNamed(context, AppRoutes.fontSettingPage);
          },
          child: CenterText("change theme"),
        ),
        Chip(
          label: CenterText(
            appThemeProvider.isDarkMode ? 'Dark' : 'Light',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
