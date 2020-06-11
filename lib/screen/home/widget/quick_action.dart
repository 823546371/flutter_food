import 'package:flutter/material.dart';
import 'package:flutter_food/screen/home/widget/action_menu.dart';

class QuickAction extends StatelessWidget {
  const QuickAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Quick Action',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ActionMenu(
                imageUrl: 'assets/images/hamburger.svg',
                check: true,
              ),
              ActionMenu(
                imageUrl: 'assets/images/pizza.svg',
              ),
              ActionMenu(
                imageUrl: 'assets/images/Ice_cream.svg',
              ),
              ActionMenu(
                imageUrl: 'assets/images/wine.svg',
              ),
            ],
          )
        ],
      ),
    );
  }
}