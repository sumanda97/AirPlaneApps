import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  CostumTextFormField(
      {required this.title,
      required this.hintText,
      this.obsecureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kblackColor,
            obscureText: obsecureText,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide(color: kblueColor)),
            ),
          ),
        ],
      ),
    );
  }
}
