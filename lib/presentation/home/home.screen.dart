import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ngitengs/presentation/home/views/bottom_bar_view.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: [
        Text("Selamat Datang " + HomeController().userName),
        Text("Saldo " + HomeController().saldo.toString()),
        ElevatedButton(
          onPressed: () {
            Get.to(BottomBarView());
          },
          child: Text("Go to Bottom Bar"),
        ),
      ])),
    );
  }
}
