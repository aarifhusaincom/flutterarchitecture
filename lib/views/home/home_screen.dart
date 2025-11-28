import '../../library.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    // final authProvider = Provider.of<AppAuthProvider>(context);
    final routeNavigationProvider = Provider.of<RouteNavigationProvider>(
      context,
    );

    return Scaffold(
      key: AppKeys.scaffoldKey,
      appBar: AppBar(
        title: CenterText(
          'counter_title',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              // await authProvider.logout();
              routeNavigationProvider.pushAndRemove(AppRoutes.login);
            },
          ),
        ],
      ),
      body: Center(child: CounterDisplay()),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'dec',
            onPressed: homeProvider.decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'inc',
            onPressed: homeProvider.increment,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
