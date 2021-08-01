import 'package:airplane/cubit/seats_cubit.dart';
import 'package:airplane/models/destiantions_model.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_pages.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:airplane/ui/widgets/costumSeatsItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ChooseSeatsPage extends StatelessWidget {
  final DestinationModel destination;
  ChooseSeatsPage(this.destination);
  @override
  Widget build(BuildContext context) {
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
              style: subtitleFontStyle3.copyWith(
                  fontSize: 24, fontWeight: semibold),
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
      return BlocBuilder<SeatsCubit, List<String>>(
        builder: (context, state) {
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
                      id: "A1",
                    ),
                    SeatsItem(
                      id: "B1",
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
                      id: "C1",
                    ),
                    SeatsItem(
                      id: "D1",
                    ),
                  ],
                ),
                // SEAT 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatsItem(
                      id: "A2",
                    ),
                    SeatsItem(
                      id: "B2",
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
                      id: "C2",
                    ),
                    SeatsItem(
                      id: "D2",
                    ),
                  ],
                ),
                // SEAT 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatsItem(
                      id: "A3",
                    ),
                    SeatsItem(
                      id: "B3",
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
                      id: "C3",
                    ),
                    SeatsItem(
                      id: "D3",
                    ),
                  ],
                ),
                // SEAT 4
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatsItem(
                      id: "A4",
                    ),
                    SeatsItem(
                      id: "B4",
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
                      id: "C4",
                    ),
                    SeatsItem(
                      id: "D4",
                    ),
                  ],
                ),
                // SEAT 5
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SeatsItem(
                      id: "A5",
                    ),
                    SeatsItem(
                      id: "B5",
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
                      id: "C5",
                    ),
                    SeatsItem(
                      id: "D5",
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
                        state.join(', '),
                        style: subtitleFontStyle2.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
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
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(state.length * destination.price),
                        style: subtitleFontStyle3.copyWith(
                          fontSize: 16,
                          fontWeight: semibold,
                        ),
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
        },
      );
    }

    Widget checkOutButton() {
      return BlocBuilder<SeatsCubit, List<String>>(
        builder: (context, state) {
          return CostumButton(
            title: "Continue to Checkout",
            onPressed: () {
              int price = destination.price * state.length;
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(
                    TransactionModel(
                      destination: destination,
                      amountOfTraveler: state.length,
                      selectedSeats: state.join(', '),
                      insurance: true,
                      refundable: false,
                      vat: 0.45,
                      price: price,
                      grandTotal: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
            margin: EdgeInsets.only(top: 30, bottom: 20),
            width: double.infinity,
          );
        },
      );
    }

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
