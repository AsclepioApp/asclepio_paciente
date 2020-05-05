import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
        backgroundColor: mainPurpleColor,

      ),
      body: Center(child: Text("Home screen, boards will be here :D "),),
    );
  }
}
