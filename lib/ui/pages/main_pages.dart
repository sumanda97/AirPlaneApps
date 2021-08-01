import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/home_pages.dart';
import 'package:airplane/ui/pages/settings_pages.dart';
import 'package:airplane/ui/pages/transaction_pages.dart';
import 'package:airplane/ui/pages/wallet_pages.dart';
import 'package:airplane/ui/widgets/costumButtonNavigationItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget build(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePages();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingsPage();
        default:
          return HomePages();
      }
    }

    Widget costumNavigationBar() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
            ),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: kBackgroundWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostumButtonNavigatinItem(
                  index: 0,
                  imageUrl: "assets/icon_home.png",
                ),
                CostumButtonNavigatinItem(
                  index: 1,
                  imageUrl: "assets/icon_booking.png",
                ),
                CostumButtonNavigatinItem(
                  index: 2,
                  imageUrl: "assets/icon_card.png",
                ),
                CostumButtonNavigatinItem(
                  index: 3,
                  imageUrl: "assets/icon_settings.png",
                ),
              ],
            ),
          ));
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundWhiteColor,
          body: Stack(
            children: [
              build(currentIndex),
              costumNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
