import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:schultzim/app/routes/app_pages.dart';
import 'package:schultzim/app/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
       initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      
    );
  }
}


