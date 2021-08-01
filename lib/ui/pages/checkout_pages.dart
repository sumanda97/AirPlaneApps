import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout_pages.dart';
import 'package:airplane/ui/widgets/costumBookingDetailsItem.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;
  CheckoutPage(this.transaction);

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
                          image:
                              NetworkImage(transaction.destination.imageUrl))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.destination.name,
                        style: subtitleFontStyle3.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        transaction.destination.city,
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
                      transaction.destination.rating.toString(),
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
              subtitle: "${transaction.amountOfTraveler} Orang",
            ),
            BookingDetailsItem(
              title: "Seat",
              subtitle: transaction.selectedSeats,
            ),
            BookingDetailsItem(
              title: "Insurance",
              subtitle: transaction.insurance ? 'YES' : 'NO',
              color: transaction.insurance ? kgrenColor : kredColor,
            ),
            BookingDetailsItem(
              title: "Refundable",
              color: transaction.refundable ? kgrenColor : kredColor,
              subtitle: transaction.refundable ? 'YES' : 'NO',
            ),
            BookingDetailsItem(
              title: "VAT",
              subtitle: "${(transaction.vat * 100).toStringAsFixed(0)}%",
            ),
            BookingDetailsItem(
              title: "Price",
              subtitle: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.price),
            ),
            BookingDetailsItem(
              title: "Grand Total",
              subtitle: NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.grandTotal),
              color: kblueColor,
            ),
          ],
        ),
      );
    }

    // DETAILS
    Widget paymentDetails() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                                          image: AssetImage(
                                              "assets/icon_plane.png"))),
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
                                NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'IDR ',
                                  decimalDigits: 0,
                                ).format(state.user.balance),
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
          return SizedBox();
        },
      );
    }

    // PAY
    Widget payButton() {
      return BlocConsumer<TransactionCubit, TransactionState>(
        listener: (context, state) {
          if (state is TransactionSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, '/success', (route) => false);
          } else if (state is TransactionFail) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: kredColor,
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is TransactionLoading) {
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: CircularProgressIndicator(),
            );
          }
          return CostumButton(
            title: "Pay Now",
            onPressed: () {
              context.read<TransactionCubit>().createTransaction(transaction);
            },
            width: double.infinity,
            margin: EdgeInsets.only(top: 30, bottom: 30),
          );
        },
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
