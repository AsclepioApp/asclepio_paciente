import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/material.dart';

class ChatRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              // Container(child: ,)
              CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/-QWes7Nb78wY/WR9ZKwYZFXI/AAAAAAAATP4/RXRt-nZgEostobg8nYPAK1Bd3-_ZIESkwCEwYBhgL/w139-h140-p/IMG_0030.JPG"),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Doctor Manuel Begaso",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text("11:50 A.M"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Hey doctor, operación de bimbím, muy corto...",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: mainPurpleColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            constraints: BoxConstraints(
                              minWidth: 20,
                              minHeight: 20,
                            ),
                            child: Text(
                              "5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
