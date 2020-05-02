import 'package:asclepio_paciente_flutter/pages/chatLobby.dart';
import 'package:asclepio_paciente_flutter/pages/login.dart';
import 'package:asclepio_paciente_flutter/pages/profile.dart';
import 'package:asclepio_paciente_flutter/pages/register.dart';
import 'package:asclepio_paciente_flutter/router/router.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SafeArea(top: true, bottom: true, child: ChatLobby(),),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => SafeAreaViewer(child: ChatLobby(),),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/register': (context) => SafeAreaViewer(child: Register(),),
      },
    );
  }
}

class SafeAreaViewer extends StatelessWidget {
  SafeAreaViewer({@required this.child});
  final child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(top: true, bottom: true, child: child);
  }
}
