import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  const CostumButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: kblueColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: onPressed,
          child: Text(
            title,
            style: whiteFontStyle.copyWith(fontWeight: medium, fontSize: 18),
          )),
    );
  }
}
