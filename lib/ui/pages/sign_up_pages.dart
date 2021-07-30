import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/costumButton.dart';
import 'package:airplane/ui/widgets/costumTextFormField.dart';
import 'package:flutter/material.dart';

class SignUpPages extends StatefulWidget {
  @override
  _SignUpPagesState createState() => _SignUpPagesState();
}

class _SignUpPagesState extends State<SignUpPages> {
// Title
  Widget title() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Text(
        "Join us and get\nyour next journey",
        style: subtitleFontStyle1.copyWith(fontWeight: semibold, fontSize: 24),
      ),
    );
  }

// ALL INPUT SECTION
  Widget inputSection() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          color: kBackgroundWhiteColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          CostumTextFormField(
            title: "Full Name",
            hintText: "Type Your Name",
          ),
          CostumTextFormField(
              title: "Email Address", hintText: "Type Your Email"),
          CostumTextFormField(
            title: "Password",
            hintText: "Type Your Password",
            obsecureText: true,
          ),
          CostumButton(
              width: double.infinity,
              title: "Get Started",
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              }),
        ],
      ),
    );
  }

// Term Button
  Widget termButton() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 50, bottom: 70),
      child: Text(
        "Term  and conditions",
        style: subtitleFontStyle3.copyWith(
            color: kgreyColor, decoration: TextDecoration.underline),
      ),
    );
  }

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
            termButton(),
          ],
        ),
      ),
    );
  }
}
