import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

 void changeLanguage(String langCode) {
    languageCode = langCode;
    notifyListeners();
  }
  void changeTheme(ThemeMode mode){
   themeMode=mode;
   notifyListeners();
  }
  String getbackgroundPath(){
   if(themeMode==ThemeMode.light){
     return "assets/images/bg.png";
   }else{
     return "assets/images/dark.png";
   }
  }
}
