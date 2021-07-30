import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class CostumDestinationCard extends StatelessWidget {
  final String name;
  final String city;
  final String imageUrl;
  final double rating;

  CostumDestinationCard(
      {required this.name,
      required this.city,
      required this.imageUrl,
      this.rating = 0.0});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        height: 320,
        width: 200,
        margin: EdgeInsets.only(left: defaultMargin),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 30,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(18))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_star.png"),
                          ),
                        ),
                      ),
                      Text(
                        rating.toString(),
                        style: whiteFontStyle.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: subtitleFontStyle3.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    city,
                    style: subtitleFontStyle2.copyWith(
                        fontSize: 14, fontWeight: light),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
