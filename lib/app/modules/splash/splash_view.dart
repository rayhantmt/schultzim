import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/routes/app_routes.dart';

import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
    @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(AppRoutes.login);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color:AppColors.primarycolor,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image.asset(AppImages.splashlogo)
        ),
      )
    );
  }
}