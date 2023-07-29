import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BottomBarView extends GetView {
  const BottomBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomBarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottomBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
