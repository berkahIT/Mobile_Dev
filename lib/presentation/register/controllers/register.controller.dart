import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final count = 0.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void getUserData() {
  
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
