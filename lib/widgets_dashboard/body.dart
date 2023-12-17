import 'package:bankapp/widgets_dashboard/slides.dart';
import 'package:bankapp/widgets_dashboard/balance_list.dart';
import 'package:flutter/material.dart';

Widget getBody(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Column(
    children: [
      Balance(size: size),
      Expanded(child: dashboardSlides(size: size)),
    ],
  );
}
