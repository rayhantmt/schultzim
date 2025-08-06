import 'package:flutter/material.dart';
import 'package:schultzim/app/modules/splash/splash_view.dart';
import 'package:schultzim/app/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
      ),
      home:SplashView()
    );
  }
}


