import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
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
            height: Get.height * 0.20,
            child: Row(
              children: [
                Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 45,
                  color: Colors.white,
                ),
                SizedBox(width: Get.width * 0.21),
                Text(
                  'Deposit Successful',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'Current Balance',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff050505),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('\$6456754',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 29,
                        color: Color(0xff050505)
                      ),
                      ),
                       SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Amount',
                                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff050505),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Formfield(
                            tittle: '\$ 55.00',
                            obsecuretext: false,
                            keyboardtype: TextInputType.number,
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
