import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Widget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: primary,
    leading: IconButton(
      onPressed: () {},
      icon: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cG9ydHJhaXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Ionicons.search,
          color: white,
        ),
      )
    ],
  );
}
