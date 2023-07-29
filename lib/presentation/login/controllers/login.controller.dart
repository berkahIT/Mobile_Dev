import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  final box = GetStorage();

  String email = GetStorage().read('email');
  String password = GetStorage().read('password');

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void getUserData() {
    box.write('username', 'Hayato');
    box.write('saldo', 200000);
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
