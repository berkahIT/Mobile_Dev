import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 46, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.density_medium),
                Text("Home "),
                Image(
                  image: AssetImage("asset/profilHome.png"),
                  height: 32,
                  width: 32,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Text(
                "selamat datang",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            Text(
              "sappatin",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff959191)),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Text(
                          "Tabungan Saat ini",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Text(
                          "RP .500.000.000",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("VALID THRU"), Text("CV")],
                        ),
                      ),
                      Padding(padding: const EdgeInsets.only(top: 4)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("6/23"),
                          Text("***"),
                        ],
                      ),
                    ]),
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xfff025464), Color(0xfff41BCDA)]),
                  borderRadius: BorderRadius.circular(10)),
              width: double.infinity,
              height: 152,
            )
          ],
        ),
      ),
    );
  }
}
