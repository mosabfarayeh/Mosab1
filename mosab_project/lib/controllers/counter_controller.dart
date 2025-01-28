// import foundation.dart
import 'package:flutter/foundation.dart';

//controller (state model)
class CounterController extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notifies all listeners (UI) about state changes
  }
}

// class LoginController extends ChangeNotifier {
//   bool _isAuth = false;

//   bool get isAuth => _isAuth;

//   void login() {
//     _isAuth = true;
//     notifyListeners(); // Notifies all listeners (UI) about state changes
//   }
// }
