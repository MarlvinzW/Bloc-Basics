import 'package:bloc_app/screens/home.dart';
import 'package:bloc_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'kiwi/injectionContainer.dart';

void main() {
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appTitle,
      home: Home(),
    );
  }
}
