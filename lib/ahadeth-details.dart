import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/ahadeth-model.dart';

class HadethDetails extends StatelessWidget {
  static const String routename = "HadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "${model.title}",
            style: GoogleFonts.elMessiri(fontSize: 22),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.7),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                model.content[index],
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.w400),
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ),
    );
  }
}
