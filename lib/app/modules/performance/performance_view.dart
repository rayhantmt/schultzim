import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class PerformanceView extends StatelessWidget {
  const PerformanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height*0.25,
            child: Row(
              children: [
                Icon(Icons.pie_chart,
                size: 65,
                color: Colors.white,
                ),
                SizedBox(width: 20,),
                Text('Performance',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
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