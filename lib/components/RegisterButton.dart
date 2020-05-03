import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/widgets.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            mainPurpleColor.withOpacity(1),
            mainPurpleColor.withOpacity(.6)
          ])),
      child: Center(
        child: Text(
          "Registrar",
          style: TextStyle( color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}