import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String name;
  InterestItem({required this.name});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icon_check.png"))),
          ),
          Text(
            name,
            style:
                subtitleFontStyle1.copyWith(fontSize: 14, fontWeight: reguler),
          ),
        ],
      ),
    );
  }
}
