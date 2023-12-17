import 'package:bankapp/theme/color.dart';
import 'package:bankapp/widgets_card/app_bar.dart';
import 'package:bankapp/widgets_card/body.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
          child: getAppBar(context), preferredSize: Size.fromHeight(60)),
      body: getBody(context),
    );
  }
}
