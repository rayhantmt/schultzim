import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height*0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(Icons.arrow_circle_left_outlined,
                  size: 45,
                  color: Colors.white,
                  ),
                ),
                Text('Faq',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white
                ),
                )
              ],
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
            ),
          ))
        ],
      ),
    );
  }
}