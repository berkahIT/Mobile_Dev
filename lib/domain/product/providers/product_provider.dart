import 'dart:io';

import 'package:belajar/config.dart';
import 'package:http/http.dart' as http;

class ProductProvider {
  final url = ConfigEnvironments.getEnvironments();

  Future<http.Response> getProducts() =>
      http.get(Uri.parse("${url['url']}products"));
}


