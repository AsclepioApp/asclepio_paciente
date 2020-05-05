import 'package:asclepio_paciente_flutter/pages/chatLobby.dart';
import 'package:asclepio_paciente_flutter/pages/profile.dart';
import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class AppTabController extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppTabControllerState();
  }
}

class AppTabControllerState extends State<AppTabController> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final List<Widget> _children = [
    ChatLobby(),
    Home(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: mainPurpleColor,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text("Chat")),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text("Profile")),
          ],
        ));
  }
}
