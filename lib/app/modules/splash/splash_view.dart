import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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