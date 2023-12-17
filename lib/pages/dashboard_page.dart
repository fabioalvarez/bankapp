import 'package:bankapp/widgets_dashboard/app_bar.dart';
import 'package:bankapp/widgets_dashboard/body.dart';
import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(60),
      ),
      body: getBody(context),
    );
  }
}
