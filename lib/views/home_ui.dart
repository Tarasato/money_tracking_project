// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_tracking_project/models/money.dart';
import 'package:money_tracking_project/models/user.dart';
import 'package:money_tracking_project/views/subviews/income_view.dart';
import 'package:money_tracking_project/views/subviews/main_view.dart';
import 'package:money_tracking_project/views/subviews/outcome_view.dart';

class HomeUI extends StatefulWidget {
  User? user;
  Money? money;
  HomeUI({super.key, this.user, this.money});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<Widget> get _showView => [
        IncomeViewUI(user: widget.user),
        MainViewUI(user: widget.user),
        OutcomeViewUI(user: widget.user),
      ];
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showView[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/income.png')),
            label: 'Income',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/home.png')),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/icons/outcome.png')),
            label: 'Outcome',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color(0xFF3E7C78),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(size: 35),
        onTap: (paramValue) {
          setState(() {
            _selectedIndex = paramValue;
          });
        },
      ),
    );
  }
}
