import 'package:bankapp/pages/card_page.dart';
import 'package:bankapp/theme/color.dart';
import 'package:bankapp/widgets/description_card.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class dashboardSlides extends StatelessWidget {
  const dashboardSlides({super.key, required this.size});
  final Size size;
  final String eur = "18 199.24 EUR";
  final String gpb = "36.24 GBP";

  @override
  Widget build(BuildContext context) {
    return slideBack([
      accountTitle(),
      SizedBox(height: 15),
      accountSlide(),
      SizedBox(height: 25),
      cardsTitle(),
      SizedBox(height: 15),
      cardSlide(context),
    ], size);
  }

  Widget accountSlide() {
    return slide(
      [
        firstRow(Ionicons.wallet_outline, "40832-810-5-7000-012345",
            Icon(Icons.keyboard_arrow_down, color: primary)),
        divider(),
        descriptionRow(Icons.euro, Text(eur, style: TextStyle(fontSize: 15))),
        divider(),
        descriptionRow(
          Icons.currency_pound_sharp,
          Text(gpb, style: TextStyle(fontSize: 15)),
        ),
      ],
    );
  }

  Widget cardSlide(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => CardPage()));
      },
      child: slide([
        firstRow(
            Icons.credit_card,
            "EUR *2330",
            Text(
              "8 199.24 EUR",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
      ]),
    );
  }

  Widget accountTitle() {
    return Text(
      "Accounts",
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
    );
  }

  Widget cardsTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Cards",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        Container(
          width: 90,
          height: 22,
          decoration: BoxDecoration(
            color: secondary.withOpacity(0.5),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Ionicons.add_sharp, size: 16, color: primary),
              Text(
                "ADD CARD",
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: primary,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
