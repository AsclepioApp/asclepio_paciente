import 'package:asclepio_paciente_flutter/components/CustomWhiteBox.dart';
import 'package:asclepio_paciente_flutter/components/RegisterButton.dart';
import 'package:asclepio_paciente_flutter/components/RegisterFormTitle.dart';
import 'package:asclepio_paciente_flutter/components/TextInput.dart';
import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<_RegisterState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              child: RandomClipper(),
            ),
            Container(
              //tamaño del contenedor un 80% del padre
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RegisterFormTitle(),
                  RegisterForm(
                    formKey: _formKey,
                  ),
                  RegisterButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  RegisterForm({@required this.formKey});
  final formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: this.formKey,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: CustomWhiteBox(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  RoundedInput(
                    labelText: "Cedula",
                  ),
                  RoundedInput(
                    labelText: "Nombre",
                  ),
                  RoundedInput(
                    labelText: "Apellido",
                  ),
                  RoundedInput(
                    labelText: "Numero Telefónico",
                  ),
                  RoundedInput(
                    labelText: "Dirección",
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class RandomClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            kMainGreenColor,
            Color(0xFF11249F),
          ],
        )),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
