import 'package:flutter/material.dart';

class LoginReristerForgotPassword extends StatelessWidget {
  final commontextStyle =
      TextStyle(fontSize: 20, decoration: TextDecoration.underline);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              child: Text(
                "Restaurar contraseña",
                style: commontextStyle,
              ),
              onTap: () {
                print("Restaurar contrasena");
              },
            )),
        InkWell(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Registrate",
              style: commontextStyle,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, "/register");
            print("registrate");
          },
        ),
      ],
    );
  }
}