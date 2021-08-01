import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: kredColor,
            content: Text(state.error),
          ));
        } else if (state is AuthInitial) {
          context.read<PageCubit>().setPage(0);
          Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
          child: Center(
            child: CostumButton(
              title: "Sign Out",
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              width: 200,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            ),
          ),
        );
      },
    );
  }
}
