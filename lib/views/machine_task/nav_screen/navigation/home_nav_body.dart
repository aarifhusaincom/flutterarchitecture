import '../../../../library.dart';
import '../../../../widgets/image_slider.dart';
import 'user_tabs_and_body.dart';

class UserHomeScreenBody extends StatelessWidget {
  const UserHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AppAuthProvider>(context);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Hi, ${auth.currentUser?.displayName ?? "Andrea"}",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "What are you looking for today?",
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 200, child: ImageSlider()),
              ],
            ),
            // const SizedBox(height: 200, child: ImageSlider()),
            const Column(
              children: [
                SizedBox(
                  height: 600,
                  width: double.infinity,
                  child: UserTabAndBody(),
                ),
              ],
            ),
            // const SizedBox.expand(child: UserTabAndBody()),
          ],
        ),
      ),
    );
  }
}
