import 'package:flutter/material.dart';

class settingsTap extends StatelessWidget {
  static const String routename = "settingsTap";

  const settingsTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "language",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.cyan)),
            child: Text(
              "Arabic",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height* 0.03),
          Text(
            "Mode",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.cyan)),
            child: Text(
              "Light",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
