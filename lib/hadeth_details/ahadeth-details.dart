import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/ahadeth-model.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routename = "HadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as HadethModel;
    var proo = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(proo.getbackgroundPath()), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "${model.title}",
            style: GoogleFonts.elMessiri(fontSize: 25),
          ),
        ),
        body: Container(
          height: 600,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0XFFFAEBD7).withOpacity(0.7),
            border: Border.all(color: Color(0XFFB7935F))
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
