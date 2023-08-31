import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/widgets/profil_tabungan.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../widgets/card_shopping.dart';
import 'controllers/wistlist.controller.dart';

class WistlistScreen extends GetView<WistlistController> {
  WistlistScreen({Key? key}) : super(key: key);

  final wistlistController = WistlistController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.offNamed(Routes.HOME),
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff303841),
            )),
        title: const Text(
          'Wistlist',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfilTabungan(
                          titelCard: "Total Tabungan",
                          valueCard: "Rp. 5.000.000"),
                      Icon(Icons.search)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Text(
                    "Wistlist",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text("Atur keuangan anda untuk masa depan",
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 26, bottom: 10),
                  child: Text(
                    "Tabungan",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CardShopping(
                    titleCard: "Freelancer",
                    dateCard: "14 Juli 2023",
                    priceCard: "+Rp.3.000.000",
                    color: Color(0xFF009688),
                    iconCard:
                        Svg("assets/icons/home.svg", color: Color(0xffA8BACD))),
                CardShopping(
                    titleCard: "Beli Skin Care",
                    dateCard: "15 Juli 2023",
                    priceCard: "-Rp.500.000",
                    color: Colors.red,
                    iconCard: Svg("assets/icons/shop.svg")),
                CardShopping(
                    titleCard: "Beli Makanan",
                    dateCard: "15 Juli 2023",
                    priceCard: "-Rp.500.000",
                    color: Colors.red,
                    iconCard: Svg("assets/icons/shop.svg")),
                CardShopping(
                    titleCard: "Freelancer",
                    dateCard: "15 July 2023",
                    priceCard: "+Rp.3.000.000",
                    color: Color(0xFF009688),
                    iconCard: Svg("assets/icons/home.svg")),
              ]),
              Padding(padding: EdgeInsets.only(top: 20)),
              SizedBox(
                height: 54,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    wistlistController.openDialog(context);
                  },
                  child: Text(
                    "Tambah Wistlist",
                    style: TextStyle(
                        fontFamily: "Plus Jakarta Sans",
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color(0xFFF009688)),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
                child: Image(
                  image: Svg("assets/icons/home.svg"),
                  color: Color(0xffC1C9D1),
                )),
            GestureDetector(
                onTap: () => Get.toNamed(Routes.STATISTIC),
                child: Image(
                    image: Svg("assets/icons/graf.svg",
                        color: Color(0xff94C3F6)))),
            IconButton(
              onPressed: () {
                Get.offNamed(Routes.PROFIL);
              },
              icon: Icon(Icons.person_4_outlined,
                  color: Color(0xffC1C9D1), size: 30),
            )
          ],
        ),
      )),
    );
  }
}
