import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class DepositView extends StatelessWidget {
  const DepositView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height*0.15,
            child: Row(
              children: [
                GestureDetector(

                  onTap: () => Get.back(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.arrow_circle_left_outlined,
                    size: 35,
                    color: Colors.white,
                    ),
                  ),
                ),
                SizedBox( width:  Get.width*0.25),
                Text('Add Deposit',
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
            child: Column(
              children: [
                
              ],
            ),
          ))
        ],
      ),
    );
  }
}