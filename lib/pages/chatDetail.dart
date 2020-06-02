import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {
  static const routeName = "/chat-detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Manuel begaso"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
            },
          )
        ],
      ),
      body: Container(
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: Center(
                  child: Text("Here will be the messages"),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  // IconButton(
                  //   onPressed: () {
                  //     print("object");
                  //   },
                  //   icon: Icon(Icons.add),
                  //   // padding: EdgeInsets.all(5),
                  // ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // width: 200,
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
