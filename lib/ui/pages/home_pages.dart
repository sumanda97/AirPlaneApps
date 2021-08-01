import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/destinations_cubit.dart';
import 'package:airplane/models/destiantions_model.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destinationCard.dart';
import 'package:airplane/ui/widgets/destinationTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  void initState() {
    context.read<DestinationsCubit>().fetchDestinations();
    super.initState();
  }

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: EdgeInsets.only(
                top: 30, left: defaultMargin, right: defaultMargin),
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
                        "${state.user.name}",
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
        } else {
          return SizedBox();
        }
      },
    );
  }

  Widget popularDestination(List<DestinationModel> destinations) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: destinations.map((DestinationModel destination) {
          return CostumDestinationCard(destination);
        }).toList()),
      ),
    );
  }

  Widget newDesinationTile(List<DestinationModel> destinations) {
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
          Column(
            children: destinations.map((DestinationModel destination) {
              return DestinationTile(destination);
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DestinationsCubit, DestinationsState>(
      listener: (context, state) {
        if (state is DestinationFail) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kredColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is DestiantionSuccess) {
          return ListView(
            children: [
              //HEADER
              header(),
              popularDestination(state.destinations),
              newDesinationTile(state.destinations),
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
