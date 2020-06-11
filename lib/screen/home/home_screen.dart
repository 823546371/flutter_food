import 'package:flutter/material.dart';
import 'package:flutter_food/screen/home/widget/base_for_you.dart';
import 'package:flutter_food/screen/home/widget/my_appbar.dart';
import 'package:flutter_food/screen/home/widget/quick_action.dart';
import 'package:flutter_food/screen/home/widget/restaurant.dart';
import 'package:flutter_food/screen/home/widget/user_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyAppbar(),
            SizedBox(
              height: 24,
            ),
            UserText(),
            SizedBox(
              height: 40.0,
            ),
            QuickAction(),
            SizedBox(
              height: 40.0,
            ),
            BaseForyou(),
            SizedBox(
              height: 40.0,
            ),
            Restaurant(),
            SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}

