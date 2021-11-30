import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_test_flutter/controller.dart';

void main() => runApp(GetMaterialApp(
      title: "Weight Tacker",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Track Your Weight2")),
      body: null,
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
