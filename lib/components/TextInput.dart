import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  TextInput({@required this.labelText, this.keyboardType, this.obscureText, this.validatiorFunc});
  final keyboardType;
  final labelText;
  final obscureText;
  final Function validatiorFunc;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value)=> validatiorFunc(value),
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: obscureText != null ? obscureText : false,
      decoration: InputDecoration(
          labelText: this.labelText,
          labelStyle: TextStyle(fontSize: 20),
          hintStyle: TextStyle(color: Colors.grey[400]),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[100]))),
    );
  }
}

class RoundedInput extends StatelessWidget {
  RoundedInput({@required this.labelText, this.keyboardType, this.obscureText, this.validatiorFunc});
  final labelText;
  final obscureText;
  final keyboardType;
  final Function validatiorFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        child: TextInput(
          labelText: this.labelText,
          keyboardType: this.keyboardType,
          obscureText: this.obscureText,
          validatiorFunc: validatiorFunc,
        ));
  }
}
