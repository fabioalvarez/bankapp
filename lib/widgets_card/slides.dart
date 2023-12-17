import 'package:bankapp/data_json/card_operations.dart';
import 'package:bankapp/widgets/description_card.dart';
import 'package:flutter/material.dart';

class cardSlides extends StatelessWidget {
  const cardSlides({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        cardOperations.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: slide([
              descriptionRow(
                cardOperations[index]['icon'],
                Text(
                  cardOperations[index]['title'],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              )
            ]),
          );
        },
      ),
    );
  }
}
