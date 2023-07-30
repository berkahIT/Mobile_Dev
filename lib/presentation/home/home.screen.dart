import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 68, left: 18, right: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.density_medium),
                  Text("Home"),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(Routes.PROFIL);
                    },
                    child: Image(
                      image: AssetImage("assets/img/profil.png"),
                      height: 32,
                      width: 32,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 28, bottom: 7),
                child: Text(
                  "Selamat Datang,",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "Rofiqul Walidain",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xFF959191),
                ),
              ),
              Container(
                width: double.infinity,
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
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 24, left: 25, right: 16, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tabungan Saat ini",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Text(
                        "Rp.500.0000.000",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xFFFFFFFF)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VALID THRU",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFFFFFFFF)),
                          ),
                          Text(
                            "CV",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xFFFFFFFF)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "06/23",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
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
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "Menu",
                style: TextStyle(
                    color: Color(0xFF303840),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
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
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.arrow_upward,
                              color: Color(0xFFA8BACD),
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
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffC1C9D1),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                margin: EdgeInsets.only(top: 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                                child: Image(
                                  image: AssetImage(
                                    "assets/icons/home.png",
                                  ),
                                ))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Freelancer",
                              style: TextStyle(
                                  color: Color(0xFF303840),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "14 July 2023",
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
                      "+ Rp.3.000.000",
                      style: TextStyle(
                          color: Color(0xFF009688),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          letterSpacing: 1),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
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
                                child: Image(
                                  image: Svg(
                                    "assets/icons/shop.svg",
                                  ),
                                ))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beli Skincare",
                              style: TextStyle(
                                  color: Color(0xFF303840),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "15 July 2023",
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
                      "- Rp.500.000",
                      style: TextStyle(
                          color: Color(0xFFDC143C),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          letterSpacing: 1),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 13),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
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
                                child: Image(
                                    image: Svg("assets/icons/shop.svg")))),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beli Skin Care",
                              style: TextStyle(
                                  color: Color(0xFF303840),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "15 July 2023",
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
                      "- Rp.500.000",
                      style: TextStyle(
                          color: Color(0xFFDC143C),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          letterSpacing: 1),
                    )
                  ],
                ),
              )
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
            Image(image: AssetImage("assets/icons/home.png")),
            Image(image: AssetImage("assets/icons/graf.png")),
            Icon(
              Icons.person_4_outlined,
              color: Color(0xffC1C9D1),
              size: 30,
            )
          ],
        ),
      )),
    );
  }
}
