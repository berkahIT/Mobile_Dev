import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(() => controller.isLoading.value? CircularProgressIndicator() :
          ListView.builder(
              itemCount: controller.productModel?.products?.length ?? 0,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                        controller.productModel!.products![index].title! ?? "kosong")
                  ],
                );
              }))),
    );
  }
}
