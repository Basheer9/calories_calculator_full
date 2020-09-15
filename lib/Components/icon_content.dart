import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String gender;

  IconContent({
    this.icon,
    this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kIconSize,
          color: Colors.white,
        ),
        SizedBox(height: 20.0),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
