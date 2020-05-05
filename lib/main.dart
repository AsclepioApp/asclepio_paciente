import 'package:asclepio_paciente_flutter/pages/appTabController.dart';
import 'package:asclepio_paciente_flutter/pages/login.dart';
import 'package:asclepio_paciente_flutter/pages/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:  Login.routeName,
      routes: {
        AppTabController.routeName: (context) => SafeAreaViewer(child: AppTabController(),),
        Register.routeName: (context) => SafeAreaViewer(child: Register(),),
        Login.routeName: (context) => SafeAreaViewer(child: Login(),),
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
