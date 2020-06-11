import 'package:flutter/material.dart';
import 'package:flutter_food/constant.dart';
import 'package:flutter_food/screen/home/widget/food_item.dart';

class BaseForyou extends StatelessWidget {
  const BaseForyou({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Best For You',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'See More',
                style: TextStyle(
                  color: mPrimaryColor,
                  fontSize: 14.0,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
             padding: const EdgeInsets.symmetric(
              horizontal: 28.0, vertical: 14.0),
            child: Row(
              children: <Widget>[
                FoodItem(
                  imageUrl: 'assets/images/food1.svg',
                  title: 'Pastas',
                  time: '40min',
                  price: '\$50',
                  check: true,
                ),
                SizedBox(width: 24.0,),
                FoodItem(
                  imageUrl: 'assets/images/food2.svg',
                  title: 'Biryani',
                  time: '35min',
                  price: '\$80',
                ),
                SizedBox(width: 24.0,),
                FoodItem(
                  imageUrl: 'assets/images/food3.svg',
                  title: 'Singapore',
                  time: '30min',
                  price: '\$60',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

