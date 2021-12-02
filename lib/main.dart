import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vs_test_flutter/controller/controller.dart';
import 'package:vs_test_flutter/core/home.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Weight Tacker",
    home: MyApp(),
  ));
}
