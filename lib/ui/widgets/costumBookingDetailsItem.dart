import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailsItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final Color color;

  BookingDetailsItem(
      {this.imageUrl = "assets/icon_check.png",
      required this.subtitle,
      required this.title,
      this.color = kblackColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageUrl))),
          ),
          Text(
            title,
            style: subtitleFontStyle3.copyWith(fontSize: 14),
          ),
          Spacer(),
          Text(
            subtitle,
            style:
                subtitleFontStyle3.copyWith(fontWeight: semibold, color: color),
          )
        ],
      ),
    );
  }
}
