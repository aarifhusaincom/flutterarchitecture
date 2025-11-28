import 'package:flutter/cupertino.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentIndex = 0;

  void setCurrentIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
