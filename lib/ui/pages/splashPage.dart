import 'dart:async';

import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kblackColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon_plane.png"))),
            ),
            Text(
              "AIRPLANE",
              style: whiteFontStyle.copyWith(
                  fontWeight: medium, fontSize: 32, letterSpacing: 10.0),
            )
          ],
        ),
      ),
    );
  }
}
