import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBE8E1),
      body: Padding(padding: EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
          Container(
            height: Get.height*0.8,
            decoration: BoxDecoration(
              color: Colors.white
            ),
          ),
        ],
      ),
      ),
    );
  }
}