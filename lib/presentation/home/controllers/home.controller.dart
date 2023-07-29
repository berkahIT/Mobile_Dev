import 'dart:convert';

import 'package:belajar/domain/product/product_model.dart';
import 'package:belajar/domain/product/providers/product_provider.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final _productsProvider = ProductProvider();
  var isLoading = false.obs;

  ProductModel? productModel;

  @override
  void onInit() {
    getProducts();
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

  void increment() => count.value++;

  getProducts() async {
    try {
      isLoading(true);
      http.Response response = await _productsProvider.getProducts();

      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        productModel = ProductModel.fromJson(result);
        print(result);
      }
    } catch (error) {
      print("Error tuh disini sobs : $error");
    } finally {
      isLoading(false);
    }
  }
  
}
