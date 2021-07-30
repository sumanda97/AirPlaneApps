import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;

  PhotoItem({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image:
              DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover)),
    );
  }
}
