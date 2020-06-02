import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment
            .centerLeft, // change this property to change the direction of the buble message
        child: Container(
          padding: EdgeInsets.all(8.0),
          constraints:
              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(6.5))),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Flexible(
                child: Container(
                  child: Text(
                    "Mesvxvxcvxcvxchfvsfdvbcvbcvbcvbjhfvssdsa",
                  ),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Container(
                child: Text("9:37 PM"),
              )
            ],
          ),
        ),
      ),
    );
  }
}