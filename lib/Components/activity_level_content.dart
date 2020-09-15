import 'package:flutter/material.dart';
import 'constants.dart';

class ActivityLevelContent extends StatelessWidget {
  final String activity;
  final IconData icon;

  ActivityLevelContent({this.activity, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          activity,
          style: kBodyTextStyle,
        ),
        SizedBox(height: 10.0),
        Icon(
          icon,
          size: 65.0,
        )
      ],
    );
  }
}
