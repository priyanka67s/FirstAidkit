import 'package:flutter/material.dart';

class UserDataProvider extends ChangeNotifier {
  String _userName = "";
  String get userName => _userName;
  set userName(String value) {
    _userName = value;
    notifyListeners();
  }
}
