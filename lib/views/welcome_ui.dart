// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:money_tracking_project/views/home_ui.dart';
import 'package:money_tracking_project/views/login_ui.dart';
import 'package:money_tracking_project/views/register_ui.dart';

class WelcomeUI extends StatefulWidget {
  const WelcomeUI({super.key});

  @override
  State<WelcomeUI> createState() => _WelcomeUIState();
}

class _WelcomeUIState extends State<WelcomeUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 300),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 180),
            child: Center(
              child: Image.asset(
                'assets/images/money.png',
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                ),
                Text(
                  'บันทึก',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.036,
                    color: Color(0xFF438883),
                  ),
                ),
                Text(
                  'รายรับรายจ่าย',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.036,
                    color: Color(0xFF438883),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginUI()));
                    },
                    child: Text(
                      'เริ่มใช้งานแอปพลิเคชัน',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3E7C78),
                        elevation: 15,
                        shadowColor: Color.fromARGB(255, 133, 225, 219)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ยังไม่ได้ลงทะเบียน?',
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * 0.014
                    )),
                    TextButton(
                      onPressed: () {
                        print('ลงทะเบียน');
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterUI()));
                      },
                      child: Text(
                        'ลงทะเบียน',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.014,
                          color: Color.fromARGB(255, 78, 138, 134),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
