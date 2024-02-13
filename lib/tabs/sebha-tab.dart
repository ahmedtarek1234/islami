import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sebhaTap extends StatefulWidget {
  static const String routename = "sebhaTap";

  sebhaTap({super.key});

  @override
  State<sebhaTap> createState() => _sebhaTapState();
}

class _sebhaTapState extends State<sebhaTap> {
  List<String> currentNameIndex = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا اله الا الله",
  ];
  int counter = 0;
  int currindex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Center(
            child: Image(
              alignment: Alignment.centerRight,
              image: AssetImage("assets/images/h-sebhan.png"),
              width: 90,
              height: 90,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                sebhaNum();
                sebhaName();
              });
            },
            child: Image(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/b-sebha.png"),
              height: 220,
              width: 220,
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Text(
            "عدد التسبيحات",
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0XFFB7935F),
            ),
            child: Center(
              child: Text(
                "$counter",
                style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF242424)),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: 137,
            height: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0XFFB7935F),
            ),
            child: Center(
              child: Text(
                currentNameIndex[currindex],
                style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFFFFFFFF)),
              ),
            ),
          )
        ],
      ),
    );
  }

  void sebhaNum() {
    if (counter < 30) {
      counter++;
    } else {
      counter = 1;
    }
  }

  void sebhaName() {
    if (counter % 30 == 0) {
      (currindex = currindex + 1) % currentNameIndex.length;
    }
  }
}
