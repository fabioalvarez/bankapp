import 'package:bankapp/theme/color.dart';
import 'package:flutter/material.dart';

class TransactionButtoms extends StatelessWidget {
  const TransactionButtoms({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Row(
        children: [
          SizedBox(width: 15),
          TransactionButtom("Add Money"),
          SizedBox(width: 15),
          TransactionButtom("Exchange"),
          SizedBox(width: 15),
        ],
      ),
    );
  }

  Widget TransactionButtom(String transaction) {
    return Flexible(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: secondary.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            transaction,
            style: TextStyle(
              color: white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
