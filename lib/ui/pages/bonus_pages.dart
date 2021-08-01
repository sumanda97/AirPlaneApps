import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BonusPages extends StatefulWidget {
  @override
  _BonusPagesState createState() => _BonusPagesState();
}

class _BonusPagesState extends State<BonusPages> {
// title
  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      child: Text(
        "Big Bonus 🎉",
        style: subtitleFontStyle3.copyWith(fontSize: 32, fontWeight: semibold),
      ),
    );
  }

// sub title
  Widget subtitle() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        "We give you early credit so that\nyou can buy a flight ticket",
        style: subtitleFontStyle2.copyWith(fontSize: 16, fontWeight: light),
        textAlign: TextAlign.center,
      ),
    );
  }

// button start
  Widget startButton() {
    return CostumButton(
      title: "Star Fly Now",
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
            context, '/main-pages', (route) => false);
      },
      width: 220,
      margin: EdgeInsets.only(top: 50),
    );
  }

// card
  Widget bonusCard() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            padding: EdgeInsets.all(defaultMargin),
            width: 300,
            height: 210,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kblueColor.withOpacity(0.3),
                    blurRadius: 80,
                    offset: Offset(0, 0),
                  )
                ],
                image: DecorationImage(
                    image: AssetImage("assets/image_card.png"))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: whiteFontStyle.copyWith(
                                fontSize: 14, fontWeight: light),
                          ),
                          Text(
                            "${state.user.name}",
                            style: whiteFontStyle.copyWith(
                                fontSize: 20, fontWeight: medium),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      margin: EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icon_plane.png"))),
                    ),
                    Text(
                      "Pay",
                      style: whiteFontStyle.copyWith(
                          fontSize: 16, fontWeight: medium),
                    )
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Text(
                  "Balance",
                  style:
                      whiteFontStyle.copyWith(fontWeight: light, fontSize: 14),
                ),
                Text(
                  "IDR ${state.user.balance}",
                  style:
                      whiteFontStyle.copyWith(fontWeight: medium, fontSize: 28),
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
