import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vs_test_flutter/controller/controller.dart';
import 'package:vs_test_flutter/view/graph_view.dart';
import 'package:vs_test_flutter/view/history_view.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = Get.put(Controller());

  int currentTab = 0;
  Widget _currentPage = GraphView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          gapLocation: GapLocation.center,
          icons: [Icons.show_chart, Icons.history],
          activeIndex: currentTab,
          iconSize: 30,
          inactiveColor: Colors.grey.shade200,
          activeColor: Colors.blue,
          onTap: (int) {
            setState(() {
              currentTab = int;
              currentTab == 0
                  ? _currentPage = GraphView()
                  : _currentPage = HistoryView();
            });
          }),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
