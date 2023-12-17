import 'package:bankapp/theme/color.dart';
import 'package:bankapp/widgets_card/card.dart';
import 'package:bankapp/widgets_card/slides.dart';
import 'package:flutter/material.dart';

Widget getBody(context) {
  var size = MediaQuery.of(context).size;
  return Column(
    children: [
      SizedBox(height: 10),
      getCards(context),
      SizedBox(height: 20),
      operationsBar(size),
    ],
  );
}

Widget operationsBar(Size size) {
  final String operations = "Operations";
  final String history = "History";

  return Expanded(
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                barTitle(size, operations, true),
                barTitle(size, history, false),
              ],
            ),
          ),
          SizedBox(height: 20),
          cardSlides(size: size),
        ],
      ),
    ),
  );
}

Widget barTitle(Size size, String title, bool selected) {
  final Color lineColor;
  final Color textColor;

  if (selected == true) {
    lineColor = primary;
    textColor = primary;
  } else {
    lineColor = black.withOpacity(0.05);
    textColor = primary.withOpacity(0.5);
  }

  return Flexible(
    child: Container(
      width: size.width / 2,
      height: 55,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: lineColor,
        width: 3.5,
      ))),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  );
}
