import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_pages.dart';
import 'package:airplane/ui/widgets/costumButtonNavigationItem.dart';
import 'package:flutter/material.dart';

class MainPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget costumNavigationBar() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
            ),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: kBackgroundWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostumButtonNavigatinItem(
                  imageUrl: "assets/icon_home.png",
                  isSelected: true,
                ),
                CostumButtonNavigatinItem(
                  imageUrl: "assets/icon_booking.png",
                ),
                CostumButtonNavigatinItem(
                  imageUrl: "assets/icon_card.png",
                ),
                CostumButtonNavigatinItem(
                  imageUrl: "assets/icon_settings.png",
                ),
              ],
            ),
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: Stack(
        children: [
          HomePages(),
          costumNavigationBar(),
        ],
      ),
    );
  }
}
