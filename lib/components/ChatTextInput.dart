import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Container(
            // width: 200,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()
                    // contentPadding:
                    ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            onPressed: () {
              print("object");
            },
            icon: Icon(Icons.send),
            // padding: EdgeInsets.only(right:8),
            // padding: EdgeInsets.all(5),
          ),
        ),
      ],
    );
  }
}