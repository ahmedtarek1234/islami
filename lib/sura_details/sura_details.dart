import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/sura_details/sura_detailsProvider.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class suraDetails extends StatelessWidget {
  static const String routename = "suraDetails";

  suraDetails({super.key});


  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    var pro = Provider.of<MyProvider>(context);
    return ChangeNotifierProvider<suraDetailsProvider>(
      create: (context) =>suraDetailsProvider()..readsurafile(suraModel.index) ,
      builder: (context, child) {
        var provider =Provider.of<suraDetailsProvider>(context);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(pro.getbackgroundPath()), fit: BoxFit.fill),
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
                  color: Color(0XFFFAEBD7).withOpacity(0.7),
                  border: Border.all(color: Color(0XFFB7935F))
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  endIndent: 50,
                  indent: 50,
                  color: Color(0XFFB7935F),
                ),
                itemBuilder: (context, index) {
                  return Text("${provider.verses[index]} (${index+1})",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.elMessiri(fontSize: 23, letterSpacing: 1),
                  );
                },
                itemCount: provider.verses.length,
              ),
            ),
          ),
        );

      },
    );
  }


}
