import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myThemeData {
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0XFF242424)),
        bodyMedium: GoogleFonts.inter(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Color(0XFF242424),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Color(0XFFB7935F)
        ),
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
  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        bodySmall:
            GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w300 , color: Color(0XFFB7935F)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white, size: 25),
          centerTitle: true,
          color: Colors.transparent,
          titleTextStyle: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0XFF141A2E),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ));
}
