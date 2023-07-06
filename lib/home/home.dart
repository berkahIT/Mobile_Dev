import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 54),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: Svg("assets/icons/User.svg", color: Colors.black),
                    width: 28,
                    height: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 109),
                    child: Text("Home",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Image(
                    image: AssetImage("assets/icons/profil.png"),
                    width: 32,
                    height: 32,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 33, bottom: 7),
              child: Text(
                "Selamat Datang,",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "Juliansyah Akbar",
              style: TextStyle(
                  color: Color(0xFF959191),
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.only(top: 26, bottom: 30),
              padding:
                  EdgeInsets.only(top: 24, left: 25, right: 16, bottom: 10),
              width: double.infinity,
              decoration: ShapeDecoration(
                  gradient: LinearGradient(
                      begin: Alignment(-0.93, 0.36),
                      end: Alignment(0.93, -0.36),
                      colors: [Color(0xFF025464), Color(0x4940BBD4)]),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tabungan Saat ini",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          width: 49,
                          height: 26,
                          decoration: ShapeDecoration(
                              color: Color(0xFFEA964F),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 19, bottom: 24),
                    child: Text(
                      "Rp.500.000.000",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "VALID THRU",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "CV",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "06/23",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "***",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400),
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
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5, right: 53),
                        width: 50,
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Center(
                            child: Icon(Icons.arrow_upward_rounded,
                                color: Color(0xFFA8BACD))),
                      ),
                      Text(
                        "Transaksi",
                        style: TextStyle(
                            color: Color(0xFF7C8894),
                            fontSize: 10,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 50,
                        height: 50,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: Center(
                            child: Icon(
                          Icons.arrow_downward_rounded,
                          color: Color(0xFFA8BACD),
                        )),
                      ),
                      Text(
                        "Pendapatan",
                        style: TextStyle(
                            color: Color(0xFF7C8894),
                            fontSize: 10,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
