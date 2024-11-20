// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainViewUI extends StatefulWidget {
  const MainViewUI({super.key});

  @override
  State<MainViewUI> createState() => _MainViewUIState();
}

class _MainViewUIState extends State<MainViewUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.287,
              //color: Color(0xFF3E7C78),
              decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 54, 137, 131),
                  color: Color(0xFF3E7C78),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
