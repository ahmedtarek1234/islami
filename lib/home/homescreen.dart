import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/tabs/ahadeth-tab.dart';
import 'package:islami/tabs/quran-tab.dart';
import 'package:islami/tabs/radio-tab.dart';
import 'package:islami/tabs/sebha-tab.dart';
import 'package:islami/tabs/settings-tab.dart';

class homescreen extends StatefulWidget {
  static const String routename = "homescreen";

  homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  List<Widget>tabs=[
    quranTap(),
    sebhaTap(),
    radioTab(),
    ahadethTab(),
    settingsTap()
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "إسلامي",
            style: GoogleFonts.elMessiri(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0XFF242424),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            backgroundColor: Color(0XFFB7935F),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ic-moshaf.png"),
                  ),
                  label: ""),

              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ic-sebha.png"),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ic-radio.png"),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/ic-quran.png"),
                  ),
                  label: ""),

              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              )
            ]),
        body: tabs [index] ,
      ),
    );
  }
}
