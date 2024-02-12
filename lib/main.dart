import 'package:flutter/material.dart';
import 'package:islami/home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: homescreen.routename,
      debugShowCheckedModeBanner:false ,
      routes: {
        homescreen.routename : (context) => homescreen(),



      },

    );
  }
}

