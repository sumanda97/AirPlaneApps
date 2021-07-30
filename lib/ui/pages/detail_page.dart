import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/choosepages.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:airplane/ui/widgets/costumInterestItem.dart';
import 'package:airplane/ui/widgets/costumphotoitme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget backgroundImage() {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image_destination1.png"),
              fit: BoxFit.cover)),
    );
  }

  Widget costumShadow() {
    return Container(
      height: 214,
      margin: EdgeInsets.only(top: 236),
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            kBackgroundWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95)
          ])),
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          // NOTE
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(top: 30),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          // TITLE
          Container(
            margin: EdgeInsets.only(top: 230),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: whiteFontStyle.copyWith(
                            fontSize: 24, fontWeight: semibold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "Tangerang",
                        style: whiteFontStyle.copyWith(
                            fontSize: 16, fontWeight: light),
                      ),
                    ],
                  ),
                ),
                Row(
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
                      "4.5".toString(),
                      style: whiteFontStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),
          ),

          // DESCRIPTION
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ABOUT
                Text(
                  "About",
                  style: subtitleFontStyle1.copyWith(
                      fontSize: 16, fontWeight: semibold),
                ),
                SizedBox(
                  height: 6,
                ),
                // Descriptin about
                Text(
                  "Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                  style: subtitleFontStyle3.copyWith(
                      fontSize: 14, fontWeight: light, height: 2),
                ),

                // PHOTO
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Photo",
                  style: subtitleFontStyle1.copyWith(
                      fontSize: 16, fontWeight: semibold),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    PhotoItem(
                      imageUrl: "assets/image_photo1.png",
                    ),
                    PhotoItem(
                      imageUrl: "assets/image_photo2.png",
                    ),
                    PhotoItem(
                      imageUrl: "assets/image_photo3.png",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // INTEREST
                Text(
                  "Interest",
                  style: subtitleFontStyle1.copyWith(
                      fontSize: 16, fontWeight: semibold),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    InterestItem(
                      name: "Kid Park",
                    ),
                    InterestItem(
                      name: "Honor Bridge",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InterestItem(
                      name: "City Museum",
                    ),
                    InterestItem(
                      name: "Central Mall",
                    ),
                  ],
                ),
              ],
            ),
          ),
          // PRICE BOOKS
          Container(
            margin:
                EdgeInsets.symmetric(vertical: 30, horizontal: defaultMargin),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "IDR 2.500.000",
                        style: subtitleFontStyle3.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Per Orang",
                        style: subtitleFontStyle2.copyWith(
                            fontSize: 14, fontWeight: light),
                      ),
                    ],
                  ),
                ),
                CostumButton(
                  title: "Books Now",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChooseSeatPage()));
                  },
                  width: 170,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            costumShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
