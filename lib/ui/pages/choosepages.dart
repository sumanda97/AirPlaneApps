import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_pages.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:airplane/ui/widgets/costumSeatsItem.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatefulWidget {
  @override
  _ChooseSeatPageState createState() => _ChooseSeatPageState();
}

class _ChooseSeatPageState extends State<ChooseSeatPage> {
  Widget title() {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey[300]),
            margin: EdgeInsets.only(top: 30),
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 50, left: 20),
          child: Text(
            "Please Select\nYour Seats",
            style:
                subtitleFontStyle3.copyWith(fontSize: 24, fontWeight: semibold),
          ),
        ),
      ],
    );
  }

  Widget seatsStatus() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // AVAILABLE
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(
              right: 6,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icon_available.png"))),
          ),
          Text(
            "Available",
            style: subtitleFontStyle3,
          ),
          // SELECTED
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(right: 6, left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icon_selected.png"))),
          ),
          Text(
            "Selected",
            style: subtitleFontStyle3,
          ),
          // UNAVAILABLE
          Container(
            height: 16,
            width: 16,
            margin: EdgeInsets.only(right: 6, left: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icon_unavailable.png"))),
          ),
          Text(
            "Unavailable",
            style: subtitleFontStyle3,
          ),
        ],
      ),
    );
  }

  Widget selectedSeats() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Column(
        children: [
          // A-B-C-D
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    "A",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    "B",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    "",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    "C",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                child: Center(
                  child: Text(
                    "D",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          // SEAT 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatsItem(
                status: 2,
              ),
              SeatsItem(
                status: 2,
              ),
              // MIDDLE
              Container(
                margin: EdgeInsets.only(top: 16),
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    "1",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 2,
              ),
            ],
          ),
          // SEAT 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 0,
              ),
              // MIDDLE
              Container(
                margin: EdgeInsets.only(top: 16),
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    "2",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 2,
              ),
            ],
          ),
          // SEAT 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatsItem(
                status: 1,
              ),
              SeatsItem(
                status: 1,
              ),
              // MIDDLE
              Container(
                margin: EdgeInsets.only(top: 16),
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    "3",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 0,
              ),
            ],
          ),
          // SEAT 4
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 2,
              ),
              // MIDDLE
              Container(
                margin: EdgeInsets.only(top: 16),
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    "4",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 0,
              ),
            ],
          ),
          // SEAT 5
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatsItem(
                status: 0,
              ),
              SeatsItem(
                status: 0,
              ),
              // MIDDLE
              Container(
                margin: EdgeInsets.only(top: 16),
                width: 48,
                height: 48,
                child: Center(
                  child: Text(
                    "5",
                    style: subtitleFontStyle3.copyWith(fontSize: 16),
                  ),
                ),
              ),
              SeatsItem(
                status: 2,
              ),
              SeatsItem(
                status: 0,
              ),
            ],
          ),

          // YOUR SEATS
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Seat",
                  style: subtitleFontStyle2.copyWith(
                      fontSize: 14, fontWeight: light),
                ),
                Text(
                  "A3, B3",
                  style: subtitleFontStyle2.copyWith(
                      color: Colors.black, fontSize: 16, fontWeight: medium),
                ),
              ],
            ),
          ),

          // TOTAL PRICE
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: subtitleFontStyle2.copyWith(
                      fontSize: 14, fontWeight: light),
                ),
                Text(
                  "IDR 550.000.000",
                  style: subtitleFontStyle3.copyWith(
                      fontSize: 16, fontWeight: semibold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  Widget checkOutButton() {
    return CostumButton(
      title: "Continue to Checkout",
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CheckoutPage()));
      },
      margin: EdgeInsets.only(top: 30, bottom: 20),
      width: double.infinity,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          title(),
          seatsStatus(),
          selectedSeats(),
          checkOutButton(),
        ],
      ),
    );
  }
}
