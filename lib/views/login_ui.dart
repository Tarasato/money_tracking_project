// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracking_project/views/home_ui.dart';
import 'package:money_tracking_project/views/welcome_ui.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool _obscurePssword = true;
  TextEditingController userName = TextEditingController(text: '');
  TextEditingController userPassword = TextEditingController(text: '');

  showWaringDialog(context, msg) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'คำเตือน',
          ),
        ),
        content: Text(
          msg,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'ตกลง',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future showCompleteDialog(context, msg) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'ผลการทำงาน',
          ),
        ),
        content: Text(
          msg,
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'ตกลง',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E7C78),
      appBar: AppBar(
        backgroundColor: Color(0xFF3E7C78),
        title: Text(
          'เข้าใช้งาน Money Tracking',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.020,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/icons/back.png'),
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeUI()));
          },
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.889,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50, bottom: 50),
                          child: Center(
                            child: Image.asset(
                              'assets/images/money.png',
                              width: MediaQuery.of(context).size.width * 0.6,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 20.0, top: 1),
                          child: TextField(
                            controller: userName,
                            decoration: InputDecoration(
                              labelStyle: TextStyle(
                                color: Color(0xFF666666),
                              ),
                              labelText: 'ชื่อผู้ใช้',
                              hintText: 'USERNAME',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3E7C78)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF3E7C78)),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
                          child: TextField(
                            controller: userPassword,
                            obscureText: _obscurePssword,
                            decoration: InputDecoration(
                                labelStyle: TextStyle(
                                  color: Color(0xFF666666),
                                ),
                                labelText: 'รหัสผ่าน',
                                hintText: 'PASSWORD',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: GoogleFonts.roboto().fontFamily,
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3E7C78)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF3E7C78)),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: _obscurePssword
                                      ? ImageIcon(
                                          AssetImage('assets/icons/lock.png'))
                                      : Icon(FontAwesomeIcons.unlockKeyhole),
                                  onPressed: () {
                                    setState(() {
                                      _obscurePssword = !_obscurePssword;
                                    });
                                  },
                                )),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeUI()));
                              },
                              child: Text(
                                'เข้าใช้งาน',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018,
                                  color: Colors.white,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF3E7C78),
                                  elevation: 15,
                                  shadowColor:
                                      Color.fromARGB(255, 133, 225, 219)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.065,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
