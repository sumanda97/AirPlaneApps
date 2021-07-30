import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatsItem extends StatelessWidget {
  // 0 = Available , 1= Selected , 2= Unavailable
  final int status;

  SeatsItem({required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kavaibleColor;
        case 1:
          return kselectedColor;
        case 2:
          return kunavaibleColor;
        default:
          return kunavaibleColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kblackColor;
        case 1:
          return kblackColor;
        case 2:
          return kunavaibleColor;
        default:
          return kunavaibleColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              "You",
              style:
                  whiteFontStyle.copyWith(fontWeight: semibold, fontSize: 12),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: borderColor())),
      child: child(),
    );
  }
}
