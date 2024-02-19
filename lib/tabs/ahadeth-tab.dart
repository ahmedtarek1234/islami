import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_details/ahadeth-details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/ahadeth-model.dart';

class ahadethTab extends StatefulWidget {
  static const String routename = "ahadethTab";

  ahadethTab({super.key});

  @override
  State<ahadethTab> createState() => _ahadethTabState();
}

class _ahadethTabState extends State<ahadethTab> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethfile();
    }

    return Column(
      children: [
        Center(
          child: Image(
            image: AssetImage("assets/images/ahadeth-h.png"),
          ),
        ),
        Divider(
          thickness: 4,
          color: Color(0XFFB7935F),
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          textAlign: TextAlign.center,
          style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        Divider(
          thickness: 4,
          color: Color(0XFFB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                color: Color(0XFF0B7935F),
                endIndent: 30,
                indent: 30,
              );
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routename,
                      arguments: ahadethData[index]);
                },
                child: Text(
                  ahadethData[index].title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400, fontSize: 22),
                ),
              );
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  loadHadethfile() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = hadethFile.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      String hadeth = ahadeth[i];
      List<String> hadethLines = hadeth.trim().split("\n");
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> hadethContetnt = hadethLines;
      print(hadethTitle);
      ahadethData.add(
        HadethModel(title: hadethTitle, content: hadethContetnt),
      );
    }
    setState(() {});
  }
}
