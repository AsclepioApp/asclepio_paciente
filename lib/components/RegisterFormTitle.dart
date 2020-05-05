import 'package:asclepio_paciente_flutter/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterFormTitle extends StatelessWidget {
  final headerStyle =
      TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w800);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Registrate",
            style: headerStyle,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, Login.routeName);
            },
            child:Text(
            "X",
            style: headerStyle,
          ) ,) ,
        ],
      ),
    );
  }
}