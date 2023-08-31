import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/card_wistlist.dart';

class WistlistView extends GetView {
  const WistlistView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tambahkan Wistlist",
              style: TextStyle(
                color: Color(0xFF303840),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            IconButton(onPressed: null, icon: Icon(Icons.close))
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardWistlist(
                titleCard: "Pilih Jenis Wistlist",
                type: TextInputType.emailAddress),
            CardWistlist(
                titleCard: "Nama Wistlist", type: TextInputType.emailAddress),
            CardWistlist(titleCard: "Harga", type: TextInputType.emailAddress),
            CardWistlist(
                titleCard: "Deadline", type: TextInputType.emailAddress),
          ],
        ),
      ),
    );
  }
}
