import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';

Widget getAppBar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: white,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new, color: black, size: 22),
    ),
    title: Text("Card", style: TextStyle(fontSize: 18, color: black)),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.more_vert, color: black, size: 25),
      )
    ],
  );
}
