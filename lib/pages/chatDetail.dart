import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetail extends StatelessWidget {

  static const routeName ="/chat-detail";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Detail"),
        actions: <Widget>[
           IconButton(icon:Icon(Icons.more_vert),onPressed: (){
             print("mierda");
           },)
        ],
      ),
      body: Container(
        child: Column(children: <Widget>[
            
        ],),
      ),
    );
  }
}
