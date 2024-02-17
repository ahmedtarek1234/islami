import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';

class suraDetails extends StatefulWidget {
  static const String routename = "suraDetails";

  suraDetails({super.key});

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      readsurafile(suraModel.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            suraModel.name,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.7),
          ),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Color(0XFFB7935F),
            ),
            itemBuilder: (context, index) {
              return Text("${verses[index]} (${index+1})",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.elMessiri(fontSize: 23, letterSpacing: 1),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void readsurafile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    print(verses);
    setState(() {});
  }
}
