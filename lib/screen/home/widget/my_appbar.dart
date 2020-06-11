import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 28.0, vertical: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/menu.svg',
              width: 24,
              height: 24,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/user.png',
                width: 60,
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}