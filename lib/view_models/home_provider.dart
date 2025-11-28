import 'dart:math';

import '../library.dart';

class HomeProvider extends ChangeNotifier {
  int counter = 0;
  int currentRandomNumber = 0;

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  void getRandomNumber() {
    final random = Random();
    currentRandomNumber = random.nextInt(1708) + 1;
    // nextInt(1708) gives 0–1707, so +1 makes it 1–1708
  }
}
