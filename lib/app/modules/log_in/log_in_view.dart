import 'package:flutter/material.dart';

import 'package:schultzim/app/utils/app_images.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBE8E1),
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