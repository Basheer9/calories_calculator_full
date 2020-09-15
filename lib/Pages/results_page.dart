import 'package:calories_calculator/Components/constants.dart';
import 'package:calories_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:calories_calculator/Components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calories Calculator'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ReusableCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'to maintain: ' + 'XXX' + ' Cal',
                  style: kBodyTextStyle,
                ),
                Text(
                  'to lose weight: ' + 'XXX' + ' Cal',
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {},
            buttonText: 're-calculate',
          )
        ],
      ),
    );
  }
}
