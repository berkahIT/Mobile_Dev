import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ngitengs/domain/register/register_model.dart';
import 'package:ngitengs/infrastructure/navigation/routes.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  TextEditingController? email;
  TextEditingController? password;

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

  register() {
    PostRegister.connectToApi(email.toString(), password.toString());
    Get.put(PostRegister());
    Get.toNamed(Routes.LOGIN);
  }

  void increment() => count.value++;
}
