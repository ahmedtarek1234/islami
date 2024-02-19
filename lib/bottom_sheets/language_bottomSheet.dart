import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/main.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class languageBottomSheet extends StatelessWidget {
  languageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("en");
                },
                child: Text(
                  AppLocalizations.of(context)!.english,
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: provider.languageCode == "en"
                        ? Color(0XFFB7935F)
                        : Colors.black87,
                  ),
                ),
              ),
              if (provider.languageCode == "en") ...[
                Icon(
                  Icons.done,
                  size: 25,
                  color: provider.languageCode == "en"
                      ? Color(0XFFB7935F)
                      : Colors.black87,
                )
              ]
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
                },
                child: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: provider.languageCode == "ar"
                          ? Color(0XFFB7935F)
                          : Colors.black87),
                ),
              ),
              if (provider.languageCode == "ar") ...[
                Icon(
                  Icons.done,
                  size: 25,
                  color: provider.languageCode == "ar"
                      ? Color(0XFFB7935F)
                      : Color(0XFFB7935F),
                )
              ]
            ],
          ),
        ],
      ),
    );
  }
}
