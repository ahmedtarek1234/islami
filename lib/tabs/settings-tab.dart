import 'package:flutter/material.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../bottom_sheets/language_bottomSheet.dart';
import '../bottom_sheets/theme-bottomShets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  static const String routename = "settingsTap";

  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.lang,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: languageBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.cyan)),
              child: Text(
                provider.languageCode == "ar"
                    ? AppLocalizations.of(context)!.arabic
                    : AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: themeBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.cyan)),
              child: Text(
                provider.themeMode == ThemeMode.dark
                    ? AppLocalizations.of(context)!.dark
                    : AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
