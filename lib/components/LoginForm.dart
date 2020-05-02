import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CustomWhiteBox.dart';
import 'TextInput.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(30),
            child: CustomWhiteBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Form(
                    child: Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        // textDirection: TextDirection.ltr,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    color: mainPurpleColor),
                              ),
                            ),
                          ),
                          RoundedInput(
                            labelText: "Usuario",
                          ),
                          RoundedInput(
                            labelText: "Contraseña",
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.all(24),
                    width: 250,
                    padding: EdgeInsets.only(bottom: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: FlatButton(
                        // padding: EdgeInsets.all(12.0),
                        color: mainPurpleColor,
                        child: Text(
                          "Ingresar",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        onPressed: () {
                          print("Ingresar");
                        },
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}