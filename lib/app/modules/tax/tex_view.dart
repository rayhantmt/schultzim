import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class TexView extends StatelessWidget {
  const TexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 40,
                  color: Colors.white,
                ),
                Text(
                  'Tax Information',
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '2023',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: Color(0xff050505),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: Get.width*0.35,
                            decoration: BoxDecoration(
                              color: Color(0xffEDF1F3),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(width: 1),
                            ),
                            child: Center(child: Text('Change Year')),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffEDF1F3),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Interst Earned',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Color(0xff050505)
                                ),
                                ),
                                Text('\$3546',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xff050505)
                                ),
                                )
                              ],
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Fee Charged',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Color(0xff050505)
                                ),
                                ),
                                Text('\$46',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xff050505)
                                ),
                                )
                              ],
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('Amount Sent To IRS',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Color(0xff050505)
                                ),
                                ),
                                Text('\$3566',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Color(0xff050505)
                                ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      CommonButton(tittle: 'Download Tax report FDF')
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
