import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/main.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class themeBottomSheet extends StatelessWidget {
  themeBottomSheet({super.key});
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
                  provider.changeTheme(ThemeMode.light);
                },
                child: Text(
                  AppLocalizations.of(context)!.light,
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: provider.themeMode== ThemeMode.light
                        ? Color(0XFFB7935F)
                        : Colors.black87,
                  ),
                ),
              ),
              if (provider.themeMode == ThemeMode.light) ...[
                Icon(
                  Icons.done,
                  size: 25,
                  color:  provider.themeMode== ThemeMode.light
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
                  provider.changeTheme(ThemeMode.dark);
                },
                child: Text(
                  AppLocalizations.of(context)!.dark,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color:  provider.themeMode== ThemeMode.dark
                          ? Color(0XFFB7935F)
                          : Colors.black87),
                ),
              ),
              if ( provider.themeMode== ThemeMode.dark) ...[
                Icon(
                  Icons.done,
                  size: 25,
                  color: provider.themeMode== ThemeMode.dark
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
