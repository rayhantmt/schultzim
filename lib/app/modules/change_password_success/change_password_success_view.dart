import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';

class ChangePasswordSuccessView extends StatelessWidget {
  const ChangePasswordSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height*0.3,),
            Text('Forgot password',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Color(0xff090909)
            ),
            ),
            SizedBox(height: 30,),
            Text('Your password has been successfully reset.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Color(0xff7D848D)
            ),
            ),
            SizedBox(height: 30,),
            CommonButton(tittle: 'Confirm')
          ],
        ),
      ),
    );
  }
}