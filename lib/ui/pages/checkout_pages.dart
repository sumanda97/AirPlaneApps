import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout_pages.dart';
import 'package:airplane/ui/widgets/costumBookingDetailsItem.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ROUTE PLANE
    Widget routePlane() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 290,
              margin: EdgeInsets.only(bottom: 10),
              height: 65,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image_checkout.png"))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CGK",
                      style: subtitleFontStyle3.copyWith(
                          fontWeight: semibold, fontSize: 24),
                    ),
                    Text(
                      "Tangerang",
                      style: subtitleFontStyle2.copyWith(
                          fontWeight: light, fontSize: 14),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "TLC",
                      style: subtitleFontStyle3.copyWith(
                          fontWeight: semibold, fontSize: 24),
                    ),
                    Text(
                      "Ciliwung",
                      style: subtitleFontStyle2.copyWith(
                          fontWeight: light, fontSize: 14),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    // BOOKING
    Widget detailBooking() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // DESTIANTION TILE
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image_destination1.png"))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: subtitleFontStyle3.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tangerang",
                        style: subtitleFontStyle2.copyWith(
                            fontSize: 14, fontWeight: light),
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
                      4.8.toString(),
                      style: whiteFontStyle.copyWith(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),

            // DETAILS
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Details",
                style: subtitleFontStyle3.copyWith(
                    fontWeight: semibold, fontSize: 16),
              ),
            ),

            // BOOKING DETAILS
            BookingDetailsItem(
              title: "Traveler",
              subtitle: "2 Orang",
              imageUrl: "assets/icon_check.png",
            ),
            BookingDetailsItem(
              title: "Seat",
              subtitle: "A3, B3",
              imageUrl: "assets/icon_check.png",
            ),
            BookingDetailsItem(
              title: "Insurance",
              subtitle: "YES",
              color: kgrenColor,
              imageUrl: "assets/icon_check.png",
            ),
            BookingDetailsItem(
              title: "Refundable",
              color: kredColor,
              subtitle: "NO",
              imageUrl: "assets/icon_check.png",
            ),
            BookingDetailsItem(
              title: "VAT",
              subtitle: "45%",
              imageUrl: "assets/icon_check.png",
            ),
            BookingDetailsItem(
              title: "Price",
              subtitle: "IDR 8.500.000",
              imageUrl: "assets/icon_check.png",
            ),
            BookingDetailsItem(
              title: "Grand Total",
              subtitle: "IDR 12.000.500",
              color: kblueColor,
              imageUrl: "assets/icon_check.png",
            ),
          ],
        ),
      );
    }

    // DETAILS
    Widget paymentDetails() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Details",
              style: subtitleFontStyle3.copyWith(
                  fontWeight: semibold, fontSize: 16),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/image_card.png"))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24,
                            width: 24,
                            margin: EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/icon_plane.png"))),
                          ),
                          Text(
                            "Pay",
                            style: whiteFontStyle.copyWith(
                                fontSize: 16, fontWeight: medium),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 80.400.000",
                          overflow: TextOverflow.ellipsis,
                          style: subtitleFontStyle3.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Current Balance",
                          style: subtitleFontStyle2.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    // PAY
    Widget payButton() {
      return CostumButton(
        title: "Pay Now",
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SuccessCheckOutPage()));
        },
        width: double.infinity,
        margin: EdgeInsets.only(top: 30, bottom: 30),
      );
    }

    // Term Button
    Widget termButton() {
      return Container(
        alignment: Alignment.center,
        child: Text(
          "Term  and conditions",
          style: subtitleFontStyle2.copyWith(
              color: kgreyColor, decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin),
        children: [
          routePlane(),
          detailBooking(),
          paymentDetails(),
          payButton(),
          termButton(),
        ],
      ),
    );
  }
}
