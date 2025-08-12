import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: Get.width*0.4,
      decoration: BoxDecoration(
        color: Color(0xffEDF1F3),
        borderRadius: BorderRadius.circular(99)
      ),
    );
  }
}