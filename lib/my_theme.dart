import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemeData {
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        bodyLarge:
            GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium:
        GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w500),
        bodySmall:
        GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w300),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black, size: 25),
          centerTitle: true,
          color: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0XFF242424),
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Color(0XFFB7935F),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ));
  static ThemeData darkTheme = ThemeData();
}
