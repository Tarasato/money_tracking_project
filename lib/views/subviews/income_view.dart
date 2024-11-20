// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class IncomeViewUI extends StatefulWidget {
  const IncomeViewUI({super.key});

  @override
  State<IncomeViewUI> createState() => _IncomeViewUIState();
}

class _IncomeViewUIState extends State<IncomeViewUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Income View',
        ),
      ),
    );
  }
}