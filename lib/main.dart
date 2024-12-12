import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.PHOTOS,
      getPages: AppPages.routes,
    );
  }
}

