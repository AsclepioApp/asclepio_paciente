import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserDirectionAndEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // textDirection: TextDirection.ltr,
      // mainAxisAlignment: ,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Dirección :",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "Calle 3ra numero 7 savica de xasx sdfsfsdfs mendoza autopistaasdasdasdasdasdasdasdasd de san isidro, santo domingo este",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height / 7,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.all(12.0),
                  color: mainPurpleColor,
                  child: Text("Editar Información", style:  TextStyle( color: kWhiteColor, fontWeight: FontWeight.bold, fontSize: 20),),
                  onPressed: () {
                    print("pressing btn");
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}