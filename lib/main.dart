import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/ahadeth-details.dart';
import 'package:islami/home/homescreen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sura_details.dart';
import 'package:islami/tabs/radio-tab.dart';
import 'package:islami/tabs/sebha-tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      darkTheme: myThemeData.darkTheme,
      theme:myThemeData.lightTheme,
      initialRoute: homescreen.routename,
      debugShowCheckedModeBanner:false ,
      locale: Locale("en"),
      routes: {
        homescreen.routename : (context) => homescreen(),
        suraDetails.routename : (context) => suraDetails(),
        sebhaTap.routename :(context) => sebhaTap(),
        radioTab.routename :(context) => radioTab(),
        HadethDetails.routename :(context) => HadethDetails(),



      },

    );
  }
}

