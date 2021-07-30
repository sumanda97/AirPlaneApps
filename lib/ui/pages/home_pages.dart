import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destinationCard.dart';
import 'package:airplane/ui/widgets/destinationTile.dart';
import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  Widget header() {
    return Container(
      margin:
          EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "How Are You,",
                  style: subtitleFontStyle3.copyWith(
                      fontSize: 24, fontWeight: semibold),
                ),
                Text(
                  "Sumanda",
                  style: subtitleFontStyle3.copyWith(
                      fontSize: 24, fontWeight: semibold),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Where to fly today",
                  style: subtitleFontStyle2.copyWith(
                      fontSize: 16, fontWeight: light),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/image_profile.png"))),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CostumDestinationCard(
              name: "Lake Ciliwung",
              city: "Tangerang",
              rating: 4.8,
              imageUrl: "assets/image_destination1.png",
            ),
            CostumDestinationCard(
              name: "White House",
              city: "Spain",
              rating: 4.5,
              imageUrl: "assets/image_destination2.png",
            ),
            CostumDestinationCard(
              name: "Hill Heyo",
              city: "Monaco",
              rating: 4.2,
              imageUrl: "assets/image_destination3.png",
            ),
            CostumDestinationCard(
              name: "Menarra",
              city: "Japan",
              rating: 4.2,
              imageUrl: "assets/image_destination4.png",
            ),
            CostumDestinationCard(
              name: "Payung Alam",
              city: "Singapure",
              rating: 4.2,
              imageUrl: "assets/image_destination5.png",
            ),
            CostumDestinationCard(
              name: "Bali",
              city: "Bali",
              rating: 4.2,
              imageUrl: "assets/image_destination6.png",
            ),
          ],
        ),
      ),
    );
  }

  Widget newDesinationTile() {
    return Container(
      margin: EdgeInsets.only(
          top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New This Year",
            style:
                subtitleFontStyle3.copyWith(fontSize: 18, fontWeight: semibold),
          ),
          DestinationTile(
            name: "Darat Beratan",
            city: "Bali",
            imageUrl: "assets/image_destination6.png",
            rating: 4.7,
          ),
          DestinationTile(
            name: "Sydney Opera",
            city: "Australia",
            imageUrl: "assets/image_destination7.png",
            rating: 4.5,
          ),
          DestinationTile(
            name: "Roma",
            city: "Italy",
            imageUrl: "assets/image_destination8.png",
            rating: 4.1,
          ),
          DestinationTile(
            name: "Menara",
            city: "Japan",
            imageUrl: "assets/image_destination4.png",
            rating: 4.1,
          ),
          DestinationTile(
            name: "Roma",
            city: "Italy",
            imageUrl: "assets/image_destination5.png",
            rating: 4.1,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //HEADER
        header(),
        popularDestination(),
        newDesinationTile()
      ],
    );
  }
}
