import 'dart:convert';

import 'package:http/http.dart' as http;

class PostRegister{
  String? id;
  String? email;
  String? password;

  PostRegister({
    this.id,
    this.email,
    this.password,
  });

  factory PostRegister.createPostRegister(Map<String, dynamic> object){
    return PostRegister(
      id: object['id'],
      email: object['name'],
      password: object['job']
    );
  }

  static Future<PostRegister> connectToApi(String email, String password) async {
    String urlAPI = "https://reqres.in/api/users";

    var apiRegister = await http.post(Uri.parse(urlAPI), body: {
      "name" : email,
      "job" : password
    });

    var jsonObject = json.decode(apiRegister.body);

    return PostRegister.createPostRegister(jsonObject);
  }

}