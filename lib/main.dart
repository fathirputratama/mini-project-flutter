import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_project/module/picture/binding/picture_binding.dart';
import 'package:mini_project/module/picture/view/list_picture_view.dart';
import 'package:mini_project/routes/app_pages.dart';

void main() {
  PictureBinding().dependencies();
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      home: ListPictureView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
