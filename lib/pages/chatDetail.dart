import 'package:asclepio_paciente_flutter/components/ChatMessage.dart';
import 'package:asclepio_paciente_flutter/components/ChatTextInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChatDetail extends StatelessWidget {
  static const routeName = "/chat-detail";
  List <ChatMessage> messages;

  ChatDetail(){
     messages = new List <ChatMessage>();
     messages.add(ChatMessage(hourTime: "9:37",isUserMessage: true,message: "mensaje",));
     messages.add(ChatMessage(hourTime: "9:37",isUserMessage: false,message: "mensaje",));
     messages.add(ChatMessage(hourTime: "9:37",isUserMessage: false,message: "mensaje",));
     messages.add(ChatMessage(hourTime: "9:37",isUserMessage: true,message: "mensaje",));

  }
  // final messages = MapList
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
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    // var ndg = new Random();
                    // ndg.nextInt(2)
                    //Pass Message and author comparator to align the message to left of right
                    var message = this.messages[index];
                    return ChatMessage(hourTime: message.hourTime,isUserMessage: message.isUserMessage,message: message.message,);
                  }),
            ),
            Expanded(flex: 1, child: ChatTextInput()),
          ],
        ),
      ),
    );
  }
}
