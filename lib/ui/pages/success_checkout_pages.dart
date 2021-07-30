import 'package:airplane/shared/theme.dart';

import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:flutter/material.dart';

class SuccessCheckOutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 300,
            margin: EdgeInsets.only(bottom: 80),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image_success.png"),
                    fit: BoxFit.cover)),
          ),
          Text(
            "Well Booked",
            style:
                subtitleFontStyle3.copyWith(fontSize: 32, fontWeight: semibold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Are you ready to explore the new\nworld of experience?",
            style: subtitleFontStyle2.copyWith(fontSize: 16, fontWeight: light),
            textAlign: TextAlign.center,
          ),
          CostumButton(
            title: "My Bookings",
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main-pages', (route) => false);
            },
            width: 200,
            margin: EdgeInsets.symmetric(vertical: 50),
          )
        ],
      )),
    );
  }
}
