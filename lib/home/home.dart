import 'package:flutter/material.dart';

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
                  Icon(Icons.density_medium),
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
                      colors: [Color(0xFF025464), Color(0xFF41BCD4)]),
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
              padding: const EdgeInsets.only(top: 11, bottom: 31),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 75,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.white,
                            child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_upward,
                                  color: Color(0xFFFC1C9D1),
                                )),
                          ),
                          Text(
                            "Transaksi",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.white,
                            child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Color(0xFFFC1C9D1),
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
                        ]),
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.white,
                            child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.file_open_rounded,
                                  color: Color(0xFFFC1C9D1),
                                )),
                          ),
                          Text(
                            "Riwayat",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 75,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 5),
                            color: Colors.white,
                            child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_downward,
                                  color: Color(0xFFFC1C9D1),
                                )),
                          ),
                          Text(
                            "Lainnya",
                            style: TextStyle(
                                color: Color(0xFF7C8894),
                                fontSize: 10,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          )
                        ]),
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
                      color: Color(0xFF303840),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFFFC1C9D1),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 33,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
                          child: Icon(
                            Icons.home,
                            color: Color(0xFFFC1C9D1),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Freelancer",
                              style: TextStyle(
                                  color: Color(0xFF303840),
                                  fontFamily: "Popins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "14 July 2023",
                              style: TextStyle(
                                  color: Color(0xFF7D8895),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "+Rp.3.000.000",
                      style: TextStyle(
                          color: Color(0xFF009688),
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 33,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
                          child: Icon(
                            Icons.shop,
                            color: Color(0xFFFC1C9D1),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Beli Skincare",
                              style: TextStyle(
                                  color: Color(0xFF303840),
                                  fontFamily: "Popins",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              "15 July 2023",
                              style: TextStyle(
                                  color: Color(0xFF7D8895),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  letterSpacing: 1),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "-Rp.500.000",
                      style: TextStyle(
                          color: Color(0xFFDC143C),
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins"),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 33,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(color: Color(0xFFF7F7F7)),
                        child: Icon(
                          Icons.shop,
                          color: Color(0xFFFC1C9D1),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Beli Makanan",
                            style: TextStyle(
                                color: Color(0xFF303840),
                                fontFamily: "Popins",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1),
                          ),
                          Text(
                            "15 July 2023",
                            style: TextStyle(
                                color: Color(0xFF7D8895),
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    "-Rp.500.000",
                    style: TextStyle(
                        color: Color(0xFFDC143C),
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
