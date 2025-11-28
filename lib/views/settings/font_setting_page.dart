import '../../library.dart';

class FontSettingPage extends StatelessWidget {
  const FontSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final font = Provider.of<FontSizeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const CenterText("Font Size")),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CenterText(
            "Adjust Chat Font Size",
            style: TextStyle(fontSize: 18),
          ),
          Slider(
            value: font.scale,
            min: 0.8,
            max: 1.8,
            divisions: 10,
            label: font.scale.toStringAsFixed(1),
            onChanged: (v) => font.setScale(v),
          ),
          const SizedBox(height: 20),
          CenterText("Sample Text", style: TextStyle(fontSize: 16)),

          /// if we do not want scaling effect on some widget
          // MediaQuery.withNoTextScaling(
          //   child: CenterText("withNoTextScaling", style: TextStyle(fontSize: 20)),
          // ),
          CounterDisplay(),
          CenterText("This is a long text"),
        ],
      ),
    );
  }
}
