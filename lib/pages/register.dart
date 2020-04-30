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

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            kMainGreenColor.withOpacity(1),
            kMainGreenColor.withOpacity(.6)
          ])),
      child: Center(
        child: Text(
          "Registrar",
          style: TextStyle(
              color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

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
          Text(
            "X",
            style: headerStyle,
          ),
        ],
      ),
    );
  }
}

class RegisterForm extends StatelessWidget {
  RegisterForm({@required GlobalKey<_RegisterState> this.formKey});
  final formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: this.formKey,
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Container(
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: kMainGreenColor.withOpacity(.1),
                        blurRadius: 20.0,
                        offset: Offset(0, 10))
                  ]),
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
              )),
        ));
    //Padding(
    //   padding: EdgeInsets.all(30.0),
    //   child: Column(
    //     children: <Widget>[
    //       Container(
    //         padding: EdgeInsets.all(5),
    //         decoration: BoxDecoration(
    //             color: kWhiteColor,
    //             borderRadius: BorderRadius.circular(10),
    //             boxShadow: [
    //               BoxShadow(
    //                   color: kMainGreenColor.withOpacity(.1),
    //                   blurRadius: 20.0,
    //                   offset: Offset(0, 10))
    //             ]),
    //         child: Column(
    //           children: <Widget>[
    //             Container(
    //                 padding: EdgeInsets.all(8.0),
    //                 decoration: BoxDecoration(
    //                     border: Border(
    //                         bottom: BorderSide(color: Colors.grey[100]))),
    //                 child: TextInput(labelText: "Cedula")),
    //             Container(
    //                 padding: EdgeInsets.all(8.0),
    //                 decoration: BoxDecoration(
    //                     border: Border(
    //                         bottom: BorderSide(color: Colors.grey[100]))),
    //                 child: TextInput(
    //                   labelText: "Nombre",
    //                 )),
    //             Container(
    //                 padding: EdgeInsets.all(8.0),
    //                 decoration: BoxDecoration(
    //                     border: Border(
    //                         bottom: BorderSide(color: Colors.grey[100]))),
    //                 child: TextInput(labelText: "Apellido")),
    //             Container(
    //               padding: EdgeInsets.all(8.0),
    //               decoration: BoxDecoration(
    //                   border:
    //                       Border(bottom: BorderSide(color: Colors.grey[100]))),
    //               child: TextInput(labelText: "Numero"),
    //             ),
    //             Container(
    //               padding: EdgeInsets.all(8.0),
    //               decoration: BoxDecoration(
    //                   border:
    //                       Border(bottom: BorderSide(color: Colors.grey[100]))),
    //               child: TextInput(labelText: "Lo otro"),
    //             ),
    //           ],
    //         ),
    //       ),
    //       SizedBox(
    //         height: 40,
    //       ),
    //       Container(
    //         height: 50,
    //         decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(10),
    //             gradient: LinearGradient(colors: [
    //               kMainGreenColor.withOpacity(1),
    //               kMainGreenColor.withOpacity(.6)
    //             ])),
    //         child: Center(
    //           child: Text(
    //             "Login",
    //             style:
    //                 TextStyle(color: kWhiteColor, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
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
