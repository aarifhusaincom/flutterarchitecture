import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/app/app_keys.dart';
import '../../core/widgets/other_widgets/counter_display.dart';
import '../../viewmodels/auth_provider.dart';
import '../../viewmodels/home_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeVM = Provider.of<HomeProvider>(context);
    final authVM = Provider.of<AuthProvider>(context);

    return Scaffold(
      key: AppKeys.scaffoldKey,
      appBar: AppBar(
        title: Text('counter_title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await authVM.logout();
              if (context.mounted) {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(builder: (_) => const LoginView()),
                //       (route) => false,
                // );
              }
            },
          ),
        ],
      ),
      body: Center(child: CounterDisplay(value: homeVM.counter)),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'dec',
            onPressed: homeVM.decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'inc',
            onPressed: homeVM.increment,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
