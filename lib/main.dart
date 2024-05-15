

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'beverages.dart';
import 'pages.dart';
import 'explor.dart';
import 'on_bording.dart';
import 'order_accepted.dart';
import 'splash_screen.dart';

void main() {

  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: pages()));
}
