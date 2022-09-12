import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DetailController extends GetxController{
  var details = [];
  var recent = [];

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData()async{
    final _details = await readJsonDetail();
    final _recent  = await readJsonRecent();

    details = _details;
    recent = _recent;
    update();
  }

  Future<dynamic> readJsonDetail() async {
    final String response = await rootBundle.loadString('json/detail.json');
    return json.decode(response);
  }

  Future<dynamic> readJsonRecent() async {
    final String response = await rootBundle.loadString('json/recent.json');
    return json.decode(response);
  }
}
