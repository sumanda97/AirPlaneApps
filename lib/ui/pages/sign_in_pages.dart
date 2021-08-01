import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:airplane/ui/widgets/costumTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPages extends StatefulWidget {
  @override
  _SignInPagesState createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
// Title
  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 150),
      child: Text(
        "Welcome Back\nLet's start your journey",
        style: subtitleFontStyle1.copyWith(fontWeight: semibold, fontSize: 24),
      ),
    );
  }

// ALL INPUT SECTION
  Widget inputSection() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      decoration: BoxDecoration(
          color: kBackgroundWhiteColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          CostumTextFormField(
            title: "Email Address",
            hintText: "Type Your Email",
            controller: emailController,
          ),
          CostumTextFormField(
            title: "Password",
            hintText: "Type Your Password",
            controller: passwordController,
            obsecureText: true,
          ),
        ],
      ),
    );
  }

  Widget submitButton() {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/main-pages', (route) => false);
        } else if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: kredColor,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return CostumButton(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            title: "Sign In",
            onPressed: () {
              print(passwordController.text);
              context.read<AuthCubit>().signIn(
                    email: emailController.text,
                    password: passwordController.text,
                  );
            });
      },
    );
  }

// Term Button
  Widget termButton() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/sign-up');
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't Have Account? ",
              style: subtitleFontStyle3.copyWith(
                  color: kgreyColor,
                  fontSize: 17,
                  decoration: TextDecoration.underline,
                  decorationColor: kblueColor),
            ),
            Text(
              "Sign Up",
              style: subtitleFontStyle3.copyWith(
                  fontSize: 17,
                  color: kblueColor,
                  decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }

  // Text Editing Controller
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundWhiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            submitButton(),
            termButton(),
          ],
        ),
      ),
    );
  }
}
