import 'package:asclepio_paciente_flutter/utilities/constants.dart';
import 'package:flutter/widgets.dart';

class CustomWhiteBox extends StatelessWidget {
  CustomWhiteBox({@required this.child});
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: kMainGreenColor.withOpacity(.1),
                blurRadius: 20.0,
                offset: Offset(0, 10))
          ]),
      child: child,
    );
  }
}