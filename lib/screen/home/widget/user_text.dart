import 'package:flutter/material.dart';

class UserText extends StatelessWidget {
  const UserText({
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
            'Good Moring',
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
          Text(
            'Amanda Alex',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
