import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardShopping extends StatelessWidget {
  CardShopping(
      {required this.titleCard,
      required this.dateCard,
      required this.priceCard,
      required this.color,
      required this.iconCard,
      super.key});

  String titleCard;
  String dateCard;
  String priceCard;
  Color color;
  ImageProvider iconCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                      width: 32,
                      height: 32,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xffF7F7F7),
                          borderRadius: BorderRadius.circular(6)),
                      child: Image(image: iconCard))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleCard,
                    style: TextStyle(
                        color: Color(0xFF303840),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  Text(
                    dateCard,
                    style: TextStyle(
                        color: Color(0xFF7C8894),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ],
          ),
          Text(
            priceCard,
            style: TextStyle(
                color: color,
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                letterSpacing: 1),
          )
        ],
      ),
    );
  }
}
