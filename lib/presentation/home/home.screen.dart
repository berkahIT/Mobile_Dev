import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';
import 'package:ngitengs/presentation/home/views/_transaksi.dart';
import 'package:ngitengs/widgets/card_shopping.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        leading: Icon(
          Icons.density_medium,
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routes.PROFIL);
              },
              child: Image(
                image: AssetImage("assets/img/profil.png"),
                height: 32,
                width: 32,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 18, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 28, bottom: 7),
                child: Text(
                  "Selamat Datang,",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins",
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "Khayatullah Al-Amin",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 12,
                  color: Color(0xFF959191),
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(top: 20, left: 25, bottom: 10, right: 16),
                height: 152,
                margin: EdgeInsets.only(top: 26, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.black,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF025464),
                        Color(0xFF41BCD4),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tabungan Saat ini",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontSize: 16,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        Container(
                          width: 49,
                          height: 26,
                          decoration: ShapeDecoration(
                              color: Color(0xFFEA964F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        )
                      ],
                    ),
                    Text(
                      "Rp.500.0000.000",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontSize: 20,
                          color: Color(0xFFFFFFFF)),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "VALID THRU",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    color: Color(0xFFFFFFFF)),
                              ),
                              Text(
                                "CV",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    color: Color(0xFFFFFFFF)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "06/23",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  color: Color(0xFFFFFFFF)),
                            ),
                            Text(
                              "***",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text(
                "Menu",
                style: TextStyle(
                    color: Color(0xFF303840),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11, bottom: 31),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (builder) {
                                return const Transaksi();
                              }));
                            },
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Icon(
                                Icons.arrow_upward,
                                color: Color(0xFFA8BACD),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Transaksi",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.arrow_downward,
                              color: Color(0xFFA8BACD),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Pendapatan",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 5),
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Image(
                              image: AssetImage("assets/icons/riwayat.png")),
                        ),
                        Text(
                          "Riwayat",
                          style: TextStyle(
                              color: Color(0xFF7C8894),
                              fontSize: 10,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Image(
                                image: Svg("assets/icons/lainnya.svg"),
                                width: 15,
                                height: 18,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "Lainnya",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaksi",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xff303840),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffC1C9D1),
                  )
                ],
              ),
              CardShopping(
                  titleCard: "Freelancer",
                  dateCard: "14 Juli 2023",
                  priceCard: "+Rp.3.000.000",
                  color: Color(0xFF009688),
                  iconCard:
                      Svg("assets/icons/home.svg", color: Color(0xffC1C9D1))),
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
            Image(image: Svg("assets/icons/home.svg")),
            GestureDetector(
                onTap: () => Get.toNamed(Routes.STATISTIC),
                child: Image(image: AssetImage("assets/icons/graf.png"))),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.PROFIL),
              child: Icon(Icons.person_4_outlined,
                  color: Color(0xffC1C9D1), size: 30),
            ),
          ],
        ),
      )),
    );
  }
}
