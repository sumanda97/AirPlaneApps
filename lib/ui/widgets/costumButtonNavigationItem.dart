import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumButtonNavigatinItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;
  const CostumButtonNavigatinItem(
      {required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        Container(
          height: 2,
          width: 32,
          decoration: BoxDecoration(
            color: isSelected ? kblueColor : kTranparant,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        SizedBox(),
      ],
    );
  }
}
