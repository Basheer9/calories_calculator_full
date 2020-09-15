import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calories_calculator/Components/round_icon_button.dart';
import 'package:calories_calculator/Components/icon_content.dart';
import 'package:calories_calculator/Components/constants.dart';
import 'package:calories_calculator/Components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calories_calculator/Components/activity_level_content.dart';
import 'package:calories_calculator/Components/bottom_button.dart';

class InputPage1 extends StatelessWidget {
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
          Row(
            children: <Widget>[
              ReusableCard(
                  child:
                      IconContent(icon: FontAwesomeIcons.mars, gender: 'MALE'),
                  onTap: () {}),
              ReusableCard(
                child:
                    IconContent(icon: FontAwesomeIcons.venus, gender: 'FEMALE'),
                onTap: () {},
              ),
            ],
          ),
          ReusableCard(
            onTap: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: kLabelTextStyle,
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  '170 cm',
                  style: kBodyTextStyle,
                ),
                SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Expanded(
                      child: Slider(
                        onChanged: (newValue) {},
                        value: 170.0,
                        min: 130.0,
                        max: 250.0,
                        activeColor: kBottomContainerColor,
                        inactiveColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              ReusableCard(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '50 kg',
                        style: kBodyTextStyle,
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            icon: Icons.add,
                          ),
                          SizedBox(width: 25.0),
                          RoundIconButton(
                            icon: Icons.remove,
                          ),
                        ],
                      )
                    ],
                  )),
              ReusableCard(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        '19',
                        style: kBodyTextStyle,
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                            onTap: () {},
                            icon: Icons.add,
                          ),
                          SizedBox(width: 25.0),
                          RoundIconButton(
                            onTap: () {},
                            icon: Icons.remove,
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class InputPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Calories Calculator'),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Choose your activity level',
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {},
                  child: ActivityLevelContent(
                    activity: 'inactive',
                    icon: Icons.airline_seat_flat,
                  ),
                ),
                ReusableCard(
                  onTap: () {},
                  child: ActivityLevelContent(
                    activity: '1 - 3 days',
                    icon: Icons.directions_walk,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {},
                  child: ActivityLevelContent(
                    activity: '3 - 5 days',
                    icon: FontAwesomeIcons.running,
                  ),
                ),
                ReusableCard(
                  child: ActivityLevelContent(
                    activity: '5 - 7 days',
                    icon: Icons.directions_bike,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {},
                  child: ActivityLevelContent(
                    activity: 'high activity',
                    icon: Icons.fitness_center,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {},
            buttonText: 'calculate',
          )
        ],
      ),
    );
  }
}
