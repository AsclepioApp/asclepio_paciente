import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({@required this.labelText});

  final labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: this.labelText,
        labelStyle: TextStyle(fontSize: 20),
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide( color: Colors.grey[100]))
      ),
    );
  }
}


class RoundedInput extends StatelessWidget {
  RoundedInput({@required this.labelText});
  final labelText;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        child: TextInput(labelText: this.labelText)
        );
  }
}
