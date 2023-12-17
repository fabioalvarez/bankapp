import 'package:bankapp/data_json/card_json.dart';
import 'package:bankapp/theme/color.dart';
import 'package:bankapp/widgets/balance.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Widget getCards(context) {
  final PageController controller = PageController();
  return Container(
    width: double.infinity,
    height: 240,
    child: PageView(
      controller: controller,
      children: List.generate(
        cardLists.length,
        (index) {
          return cardHeader(
            context,
            cardLists[index]["amount"],
            cardLists[index]["currency"],
            cardLists[index]["card_number"],
            cardLists[index]["valid_date"],
            cardLists[index]["bg_color"],
            cardLists[index]["card_logo"],
          );
        },
      ),
    ),
  );
}

Widget cardHeader(
    context, amount, currency, cardNumber, validDate, bgColor, cardLogo) {
  var size = MediaQuery.of(context).size;
  return Column(
    children: [
      balance(currency, amount),
      SizedBox(height: 15),
      card(size, cardNumber, validDate, bgColor, cardLogo),
    ],
  );
}

Widget card(Size size, cardNumber, validDate, bgColor, cardLogo) {
  return Container(
    width: size.width * 0.85,
    height: 170,
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Ionicons.card_outline,
                  size: 30, color: white.withOpacity(0.3)),
              SizedBox(height: 15.0),
              Text(
                cardNumber,
                style: TextStyle(
                  color: white.withOpacity(0.8),
                  fontSize: 20,
                  wordSpacing: 15,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "VALID THRU",
                    style: TextStyle(
                      color: white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    validDate,
                    style: TextStyle(
                      color: white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              Image.asset(cardLogo, width: 50),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget balance(currency, amount) {
  return balanceInfo(
    [
      Text(currency,
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: black)),
      SizedBox(
        width: 5,
      ),
      Text(
        amount,
        style:
            TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: black),
      )
    ],
  );
}
