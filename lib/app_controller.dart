import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  
  static AppController instance = AppController();

  bool darkTheme = true;

  changeTheme(){
    darkTheme = !darkTheme;
    notifyListeners();
  }
}