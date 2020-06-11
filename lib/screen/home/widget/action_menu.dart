import 'package:flutter/material.dart';
import 'package:flutter_food/constant.dart';
import 'package:flutter_svg/svg.dart';

class ActionMenu extends StatelessWidget {
  final String imageUrl;
  final bool check;

  const ActionMenu({
    Key key,
    this.imageUrl,
    this.check = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: check ? mPrimaryColor : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: check
                  ? mPrimaryColor.withOpacity(0.5)
                  : mPrimaryColor.withOpacity(0.03),
              offset: Offset(0, 10),
              blurRadius: 10,
              spreadRadius: 1.5,
            ),
          ]),
      child: SvgPicture.asset(
        imageUrl,
        color: check ? Colors.white : mPrimaryColor,
      ),
    );
  }
}
