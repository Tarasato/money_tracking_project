// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracking_project/views/home_ui.dart';

void main() {
  runApp( 
    MoneyTrackingApp()
  );
}

class MoneyTrackingApp extends StatefulWidget {
  const MoneyTrackingApp({super.key});

  @override
  State<MoneyTrackingApp> createState() => _MoneyTrackingAppState();
}

class _MoneyTrackingAppState extends State<MoneyTrackingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeUI(),
      theme: ThemeData(
      textTheme: GoogleFonts.kanitTextTheme(
        Theme.of(context).textTheme
      )
        ),
      );
  }
}