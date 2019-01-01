import 'package:flutter/material.dart';
import 'package:posse/style/theme.dart' as Theme;

class SplashLoad extends StatefulWidget {
  SplashLoad({Key key}) : super(key: key);

  @override
  SplashLoadState createState() => new SplashLoadState();
}

class SplashLoadState extends State<SplashLoad>{
  Widget build(BuildContext context) {
    return new Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height >= 775.0
                ? MediaQuery.of(context).size.height
                : 775.0,
            decoration: new BoxDecoration(
              gradient: new RadialGradient(
                  colors: [
                    Theme.Colors.loginGradientStart,
                    Theme.Colors.loginGradientEnd
                  ],
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new CircularProgressIndicator(
                  strokeWidth: 44,
                ),

                ],
            ),
          ),
        ),
      ),
    );
  }
}
