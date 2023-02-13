// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'package:flutter/material.dart';
import 'package:ui_demo/profile.dart';

import './homePage.dart';

void main() {
  runApp(const UIDemo());
}

class UIDemo extends StatelessWidget {
  const UIDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 100,
          color: Colors.green,
          child: BottomNavigationBar(
            backgroundColor: Colors.blue,
            iconSize: 25,
            elevation: 3,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
                label: '',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.compass_calibration,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
                label: 'Connection',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: Color.fromARGB(255, 102, 102, 102),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
