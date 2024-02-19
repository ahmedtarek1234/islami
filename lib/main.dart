import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_details/ahadeth-details.dart';
import 'package:islami/bottom_sheets/language_bottomSheet.dart';
import 'package:islami/home/homescreen.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:islami/sura_details/sura_details.dart';
import 'package:islami/tabs/radio-tab.dart';
import 'package:islami/tabs/sebha-tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';



void main() {
  runApp( ChangeNotifierProvider<MyProvider>(
    create: (context) =>MyProvider(),


      child: MyApp()));
}

class MyApp extends StatelessWidget {

   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: homescreen.routename,
      theme: myThemeData.lightTheme,
      darkTheme: myThemeData.darkTheme,
      themeMode:provider.themeMode,

      debugShowCheckedModeBanner:false ,
      locale: Locale("${provider.languageCode}"),
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

