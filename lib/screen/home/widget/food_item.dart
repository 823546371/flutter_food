import 'package:flutter/material.dart';
import 'package:flutter_food/constant.dart';
import 'package:flutter_food/widget/rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class FoodItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String price;
  final bool check;

  const FoodItem({
    Key key,
    this.imageUrl,
    this.title,
    this.time,
    this.price,
    this.check = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: check
                  ? mPrimaryColor.withOpacity(0.3)
                  : mPrimaryColor.withOpacity(0.03),
              offset: Offset(0, 10),
              blurRadius: 10,
              spreadRadius: 1.5,
            )
          ]),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: SvgPicture.asset(
              imageUrl,
              width: 168,
              height: 138,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 4, 12, 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RatingBar(
                      onRatingUpdate: (value) {},
                      count: 5,
                      maxRating: 5,
                      value: 5,
                      selectColor: Colors.orange,
                      size: 12.0,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        color: mGreenColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: mPrimaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    'assets/images/car.svg',
                    width: 18,
                    height: 18,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}