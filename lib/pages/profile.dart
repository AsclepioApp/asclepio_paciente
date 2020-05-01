import 'package:asclepio_paciente_flutter/components/UserDirectionAndEdit.dart';
import 'package:asclepio_paciente_flutter/components/UserInformationSection.dart';
import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Perfil"),
          backgroundColor: mainPurpleColor,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Expanded(
                //Profile picture, change to network when saved
                child: Image.asset("assets/images/profile_picture.png"),
                flex: 1,
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(25),
                    child: UserInformationSection()),
                flex: 1,
              ),
              Expanded(
                child: Container(
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: UserDirectionAndEdit())),
                flex: 1,
              )
            ],
          ),
        ));
  }
}





