import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class WithdrawView extends StatelessWidget {
  const WithdrawView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height*0.20,
            child: Row(
              children: [
                Icon(Icons.arrow_circle_left_outlined,
                size: 45,
                color: Colors.white,
                ),
                SizedBox(width: Get.width*0.21,),
                Text('Deposit Successful',
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text('Current Balance',
                  style: TextStyle(
fontWeight: FontWeight.w400,
fontSize: 14,
color: Color(0xff050505)
                  ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}