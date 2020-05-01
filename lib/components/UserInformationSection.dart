import 'package:flutter/widgets.dart';

import 'UserRowInfoKeyValue.dart';

class UserInformationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.ltr,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        UserRowInfoKeyValue(
          keyInfo: "Nombre Completo :",
          valueInfo: "Angel Torres",
        ),
        UserRowInfoKeyValue(
          keyInfo: "Telefono :",
          valueInfo: "809-665-8955",
        ),
        UserRowInfoKeyValue(
          keyInfo: "Cédula :",
          valueInfo: "402-2602474-9",
        ),
      ],
    );
  }
}