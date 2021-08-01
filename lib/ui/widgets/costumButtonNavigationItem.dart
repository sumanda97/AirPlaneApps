import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CostumButtonNavigatinItem extends StatelessWidget {
  final int index;

  final String imageUrl;
  const CostumButtonNavigatinItem(
      {required this.imageUrl, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kblueColor
                : kgreyColor,
          ),
          Container(
            height: 2,
            width: 32,
            decoration: BoxDecoration(
              color: context.read<PageCubit>().state == index
                  ? kblueColor
                  : kTranparant,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
