import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:posse/ui/user_page.dart';
import 'package:posse/ui/message_page.dart';
import 'package:posse/ui/swipe_page.dart';

class PageSwapper extends StatelessWidget {

  Widget pageBubbles = new Container(
    child: new Row(
      children: <Widget>[
        new Container(
          width: 20,
          height: 40,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                  color: const Color(0x88FFFFFF)
              )
          ),
        ),
        new Container(
          width: 20,
          height: 40,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                  color: const Color(0x88FFFFFF)
              )
          ),
        ),
        new Container(
          width: 20,
          height: 40,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                  color: const Color(0x88FFFFFF)
              )
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {

  }
}