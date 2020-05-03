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
                        hintText: "klk",
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(15.0),
                          ),
                        ),
                        prefixIcon: Icon(Icons.search),
                      )),
                    ),
                  )

                  // Text("Chat Input Here")
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
              
              // Column(
              //   children: <Widget>[
              //     ChatRow(),
              //     ChatRow(),
              //     ChatRow(),
              //     ChatRow(),
              //     // Expanded(child: ,),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        // color: Colors.blue,
        child: IntrinsicHeight(
          child: Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Container(child: ,)
              CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(
                    "https://lh3.googleusercontent.com/-QWes7Nb78wY/WR9ZKwYZFXI/AAAAAAAATP4/RXRt-nZgEostobg8nYPAK1Bd3-_ZIESkwCEwYBhgL/w139-h140-p/IMG_0030.JPG"),
              ),
              // Image.asset(
              //   "assets/images/profile_picture.png",
              //   width: 60,
              //   height: 60,
              // ),
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
                            "Manuel Vladimir Oleaga Begaso",
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
              // Container(
              //   // width: ,
              //   color: Colors.black,
              //   child: Text("Wawawawa"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
