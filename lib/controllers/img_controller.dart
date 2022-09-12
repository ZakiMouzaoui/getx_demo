import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ImageController extends GetxController{
  var images = [];
  var leftShift = 0;

  @override
  void onInit() {
    super.onInit();
    getImages();
  }

  void getImages()async{
    final data = await readJsonImages();
    images = data;

  }

  Future<dynamic> readJsonImages() async {
    final String response = await rootBundle.loadString('json/img.json');
    return json.decode(response);
  }

  void changeLeftShift(){
    leftShift += 30;
    update();
  }
}
