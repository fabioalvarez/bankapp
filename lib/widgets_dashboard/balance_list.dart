import 'package:bankapp/data_json/balance_json.dart';
import 'package:bankapp/widgets/balance.dart';
import 'package:bankapp/widgets_dashboard/transaction_buttom.dart';
import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.25,
      decoration: BoxDecoration(color: primary),
      child: Column(
        children: [
          Container(
            width: size.width,
            height: 110,
            child: balanceHeader(),
          ),
          Expanded(child: TransactionButtoms(size: size)),
        ],
      ),
    );
  }

  Widget balanceHeader() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(balanceList.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  balance(index),
                  SizedBox(height: 8),
                  description(index),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget balance(int index) {
    return balanceInfo(
      [
        Text(balanceList[index]['currency'],
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: index == 0 ? white : white.withOpacity(0.5))),
        SizedBox(
          width: 5,
        ),
        Text(
          balanceList[index]['amount'],
          style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: index == 0 ? white : white.withOpacity(0.5)),
        )
      ],
    );
  }

  Widget description(int index) {
    return Text(
      balanceList[index]['description'],
      style: TextStyle(
        fontSize: 15,
        color: white.withOpacity(0.5),
      ),
    );
  }
}
