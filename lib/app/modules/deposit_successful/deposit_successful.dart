

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';

import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class DepositSuccessful extends StatelessWidget {
  const DepositSuccessful({super.key});

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
                Icon(Icons.arrow_back_ios_new_outlined,
                size: 35,
                color: Colors.white,
                ),
                SizedBox(width: Get.width*0.25,),
                Text('Deposit Successful',
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
            ),
            child: Column(
              children: [
                SizedBox(height: Get.height*0.15,),
                SvgPicture.asset(AppImages.dpscful),
                SizedBox(height: Get.height*0.05,),
                Text('Deposit successful!',
                style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 16,
                color: AppColors.primarycolor
                ),
                ),
                Spacer(),
                CommonButton(tittle: 'Confirm',
                
                ),
SizedBox(height: 40,)

              ],
            ),
          ))
        ],
      ),
    );
  }
}