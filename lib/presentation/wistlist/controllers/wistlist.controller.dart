import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngitengs/presentation/wistlist/views/_view.dart';

class WistlistController extends GetxController {
  //TODO: Implement WistlistController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future openDialog(BuildContext context) =>
      showDialog(context: context, builder: (context) => WistlistView());

  void increment() => count.value++;
}
