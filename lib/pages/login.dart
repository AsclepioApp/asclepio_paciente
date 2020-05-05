import 'package:asclepio_paciente_flutter/components/LoginForm.dart';
import 'package:asclepio_paciente_flutter/components/LoginImage.dart';
import 'package:asclepio_paciente_flutter/components/LoginReristerForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {

  static const routeName = "/login";
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: LoginImage(),
          ),
          Expanded(flex: 2, child: LoginForm()),
          Expanded(
            flex: 1,
            child: LoginReristerForgotPassword(),
          )
        ],
      ),
    );
  }
}








