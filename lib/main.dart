import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Components/reusable_card.dart';
import 'Components/icon_content.dart';
import 'Components/constants.dart';
import 'Components/round_icon_button.dart';
import 'Pages/input_pages.dart';
import 'Pages/results_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0D22),
        scaffoldBackgroundColor: Color(0xff090C21)
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        InputPage1(),
        InputPage2(),
      ],
    );
  }
}




