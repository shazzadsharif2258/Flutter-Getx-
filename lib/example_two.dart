import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

class ExampleTwo extends GetxController {
  RxDouble opacity = 0.4.obs;
  RxBool noti = false.obs;
  RxList<String> fruitList = [
    'Orange',
    'Banana',
    'Mango',
    'Apple',
  ].obs;
  RxList<dynamic> favList = [].obs;

  RxString imagePath = ''.obs;

  final email = TextEditingController();
  final pass = TextEditingController();

  RxBool loading = false.obs;

  setOpacity(double value) {
    opacity.value = value;
  }

  setNoti(bool value) {
    noti.value = value;
  }

  addFav(String name) {
    favList.add(name);
  }

  removeFav(String name) {
    favList.remove(name);
  }

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (image != null) {
      imagePath.value = image.path.toString();
    }
  }

  void loginApi() async {
    loading.value = true;
    try {
      final url = 'https://reqres.in/api/login';

      final body = {
        'email': email.text.trim(),
        'password': pass.text.trim(),
      };

      final response = await post(
        Uri.parse(url),
        body: body,
        headers: {'x-api-key': 'reqres-free-v1'},
      );

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        loading.value = false;
        Get.snackbar(
          'Login Succesfull',
          'Congrates Comrade!!!!',
        );
      } else {
        loading.value = false;
        Get.snackbar('Exception', data['error']);
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }
}
