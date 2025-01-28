// import foundation.dart
import 'package:flutter/foundation.dart';

class LoginController extends ChangeNotifier {
  bool _isAuth = false;

  bool get isAuth => _isAuth;

  void login() {
    _isAuth = !_isAuth;
    notifyListeners(); // Notifies all listeners (UI) about state changes
  }
}
