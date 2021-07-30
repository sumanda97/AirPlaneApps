import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image_get_started.png"),
                    fit: BoxFit.cover)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a bird",
                  style:
                      whiteFontStyle.copyWith(fontSize: 32, fontWeight: bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Explore new world with us and let\nyourself get an amazing experiences",
                  style: subtitleFontStyle2,
                  textAlign: TextAlign.center,
                ),
                CostumButton(
                  title: "Get Started",
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  width: 220,
                  margin: EdgeInsets.only(top: 50, bottom: 50),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
