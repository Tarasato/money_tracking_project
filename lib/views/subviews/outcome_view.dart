// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OutcomeViewUI extends StatefulWidget {
  const OutcomeViewUI({super.key});

  @override
  State<OutcomeViewUI> createState() => _OutcomeViewUIState();
}

class _OutcomeViewUIState extends State<OutcomeViewUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Outcome View',
        ),
      ),
    );
  }
}