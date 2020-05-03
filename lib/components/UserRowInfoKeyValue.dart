
import 'package:flutter/widgets.dart';

class UserRowInfoKeyValue extends StatelessWidget {
  UserRowInfoKeyValue({@required this.keyInfo, @required this.valueInfo});
  final String keyInfo;
  final String valueInfo;
  final textStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(this.keyInfo, style: textStyle),
        Text(this.valueInfo, style: textStyle),
      ],
    );
  }
}