import 'package:asclepio_paciente_flutter/pages/login.dart';
import 'package:asclepio_paciente_flutter/pages/register.dart';
import 'package:flutter/material.dart';

class Router {
  static MaterialApp getRouter() {
    return MaterialApp(
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Login(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/register': (context) => Register(),
      },
    );
  }
}
