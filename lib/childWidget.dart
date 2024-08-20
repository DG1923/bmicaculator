import 'package:flutter/material.dart';
import 'constants.dart';
class childWidget extends StatelessWidget {
  const childWidget({
    required this.text,required this.icon
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.text,
          style: kTextStyle,
        ),
      ],
    );
  }
}
