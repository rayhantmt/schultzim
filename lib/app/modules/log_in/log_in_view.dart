import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schultzim/app/utils/app_images.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset(AppImages.loginlogo,
           height: 70,
           width: 150,
          // alignment: Alignment.center,
           )
          ],
        ),
      )
    );
  }
}