import 'package:flutter/cupertino.dart';

import '../../library.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CenterText('Settings')),
      body: settingItem(context: context, title: "Dark Mode"),
    );
  }

  Widget settingItem({required BuildContext context, required String title}) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CenterText(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          CupertinoSwitch(
            value: context.read<AppThemeProvider>().isDarkMode,
            onChanged: (value) {
              context.read<AppThemeProvider>().toggleTheme();
              context.read<AppThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
    );
  }
}
