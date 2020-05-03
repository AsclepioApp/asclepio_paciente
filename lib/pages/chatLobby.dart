import 'package:asclepio_paciente_flutter/components/ChatRow.dart';
import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatLobby extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChatLobbyState();
  }
}

class ChatLobbyState extends State<ChatLobby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
           title: Text("Chat Lobby"),
          ),
      body:  Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Chats",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      height: 30,
                      child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(vertical: 0),
                        hintText: "Buscar",
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15.0),
                          ),
                        ),
                        prefixIcon: Icon(Icons.search),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemCount: 30,
                itemBuilder: (context,i){
                  return ChatRow();
              })  
            )
          ],
        ),
      ),
    );
  }
}

