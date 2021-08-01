import 'package:airplane/cubit/seats_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeatsItem extends StatelessWidget {
  // NOTE: 0. Available 1. Selected 2. Unavailable

  final String id;
  final bool isAvailable;

  const SeatsItem({
    Key? key,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatsCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kunavaibleColor;
      } else {
        if (isSelected) {
          return kselectedColor;
        } else {
          return kavaibleColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kunavaibleColor;
      } else {
        return kselectedColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteFontStyle.copyWith(
              fontSize: 14,
              fontWeight: semibold,
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatsCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor(),
            width: 2,
          ),
        ),
        child: child(),
      ),
    );
  }
}
