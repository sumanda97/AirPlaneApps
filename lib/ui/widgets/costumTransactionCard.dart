import 'package:airplane/models/transaction_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costumBookingDetailsItem.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  TransactionCard(this.transaction);

  @override
  Widget build(BuildContext context) {
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
          Row(
            children: [
              Text(
                "Transaction Details",
                style: subtitleFontStyle3.copyWith(
                    fontSize: 18, fontWeight: semibold),
              )
            ],
          ),
          // DESTIANTION TILE
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16, top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(transaction.destination.imageUrl))),
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
                        fontSize: 14, color: Colors.black, fontWeight: medium),
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
}
