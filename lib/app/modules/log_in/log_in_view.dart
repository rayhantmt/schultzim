import 'package:flutter/material.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';

import 'package:schultzim/app/utils/app_images.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBE8E1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20 ,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset(AppImages.loginlogo,
           height: 70,
           width: 150,
          // alignment: Alignment.center,
           ),
           Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: CommonButton(tittle: 'Log In',)),
          ],
        ),
      )
    );
  }
}