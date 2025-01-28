// import foundation.dart
import 'package:flutter/foundation.dart';
// import dart:math
import 'dart:math';

class NameSwapController extends ChangeNotifier {
  String _name = "Laith";

  String get name => _name;

  void swapName() {
    // getting random name from the list ["Laith", "Sanad", "Ahmad"]
    var random = Random();
    var names = ["Laith", "Sanad", "Ahmad", "Mohammad", "Ali"];
    _name = names[random.nextInt(names.length)]; // randon.nextInt(5) [0 .. 4]
    notifyListeners(); // Notifies all listeners (UI) about state changes
  }
}
