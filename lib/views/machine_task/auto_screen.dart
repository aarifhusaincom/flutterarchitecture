import '../../library.dart';
import 'loading_screen.dart';
import 'nav_screen/nav_screen.dart';
import 'onboarding/onboarding_screen.dart';

class AutoScreen extends StatelessWidget {
  const AutoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AppAuthProvider>(context);
    return StreamBuilder(
      stream: auth.authStateChange,
      builder: (context, snapshot) {
        Widget widget;
        if (snapshot.connectionState == ConnectionState.waiting) {
          log('Appp.waiting');
          widget = const LoadingScreen();
        } else if (snapshot.hasData) {
          log('Appp.has data');
          widget = const NavScreen();
          // widget = const Center(child: Text('Something went wrong!'));
        } else {
          log('Appp. has no data so go to OnboardingScreen');
          // Navigator.pushAndRemoveUntil(
          //     context,
          //     MaterialPageRoute(
          //         builder: (_) =>const OnboardingScreen()),
          //         (route) => false);
          widget = const OnboardingScreen();
        }
        return widget;
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ValueListenableBuilder(
  //       valueListenable: AppAuthProvider,
  //       builder: (context, AppAuthProvider, child) {
  //         return StreamBuilder(
  //             stream: AppAuthProvider.authStateChange,
  //             builder: (context, snapshot) {
  //               Widget widget;
  //               if (snapshot.connectionState == ConnectionState.waiting) {
  //                 widget = const LoadingScreen();
  //               } else if (snapshot.hasData) {
  //                 widget = const NavScreen();
  //                 // widget = const Center(child: Text('Something went wrong!'));
  //               } else {
  //                 widget = const OnboardingScreen();
  //               }
  //               return widget;
  //             });
  //       });
  // }
}
