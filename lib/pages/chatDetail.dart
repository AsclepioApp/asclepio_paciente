import 'dart:math';

import 'package:asclepio_paciente_flutter/components/ChatTextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ChatMessage.dart';

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
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Expanded(
              flex: 9,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, int) {
                    // var ndg = new Random();
                    // ndg.nextInt(2)
                    //Pass Message and author comparator to align the message to left of right
                    return ChatMessage();
                  }),
            ),
            Expanded(flex: 1, child: ChatTextInput()),
          ],
        ),
      ),
    );
  }
}
