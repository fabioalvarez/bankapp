import 'package:flutter/material.dart';

Widget balanceInfo(List<Widget> balanceComponents) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: balanceComponents,
  );
}
