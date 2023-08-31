import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:get/get.dart';

import '../../../infrastructure/navigation/routes.dart';

class Transaksi extends GetView {
  const Transaksi({Key? key}) : super(key: key);
  @override
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
          'Transaksi',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFFAFAFA),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Container(
              height: 41,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [],
              ),
            )
          ],
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
                  Get.offNamed(Routes.HOME);
                },
                child: Image(
                  image: Svg("assets/icons/home.svg"),
                  color: Color(0xff94C3F6),
                )),
            InkWell(
                onTap: () => Get.offNamed(Routes.STATISTIC),
                child: Image(image: AssetImage("assets/icons/graf.png"))),
            Icon(Icons.person_4_outlined, color: Color(0xffC1C9D1), size: 30),
          ],
        ),
      )),
    );
  }
}
