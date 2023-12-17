import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bankapp/pages/dashboard_page.dart';
import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getTabs(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          pageIndex = 4;
        },
        child: Icon(Ionicons.card_outline, size: 25, color: white),
        backgroundColor: primary,
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: getBody(),
    );
  }

  Widget getTabs() {
    List<IconData> iconsItems = [
      Ionicons.grid_outline,
      Ionicons.chatbox_outline,
      Ionicons.notifications_outline,
      Ionicons.person_circle,
    ];
    return AnimatedBottomNavigationBar(
        icons: iconsItems,
        activeColor: primary,
        splashColor: secondary,
        inactiveColor: black.withOpacity(0.5),
        activeIndex: pageIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 10,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        });
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        DashboardPage(),
        Center(
          child: Text(
            "Chat Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "Notification Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "Account Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "Credit Card Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
