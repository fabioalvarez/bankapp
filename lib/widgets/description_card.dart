import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';

Widget slideBack(List<Widget> content, Size size) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 40, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: content,
      ),
    ),
  );
}

Widget slide(List<Widget> slideRow) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
          ),
        ]),
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: slideRow,
      ),
    ),
  );
}

Widget firstRow(IconData icon, String text, Widget rigthIcon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      descriptionRow(icon, Text(text, style: TextStyle(fontSize: 15))),
      rigthIcon,
    ],
  );
}

Widget descriptionRow(IconData icon, Widget Text) {
  return Row(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: secondary.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Icon(icon, color: primary, size: 20),
        ),
      ),
      SizedBox(width: 15),
      Text,
    ],
  );
}

Widget divider() {
  return Column(
    children: [
      SizedBox(height: 5),
      Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Divider(
          thickness: 0.2,
        ),
      ),
      SizedBox(height: 10),
    ],
  );
}
