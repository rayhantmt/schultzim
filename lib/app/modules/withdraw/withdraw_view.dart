import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/modules/withdraw/withdraw_controller.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class WithdrawView extends StatelessWidget {
  const WithdrawView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WithdrawController>();
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.20,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    size: 45,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: Get.width * 0.25),
                Text(
                  'Withdraw',
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
                  padding: const EdgeInsets.only(left: 20, right: 20),
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
                      SizedBox(height: 10),
                      Text(
                        '\$6456754',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 29,
                          color: Color(0xff050505),
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
                      SizedBox(height: 10),
                      Text(
                        'Fee Preview: \$0.00',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xff050505),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Withdraw To',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Obx(
                        () => Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffEDF1F3),
                            border: Border.all(
                              width: 1,
                              color: Color(0xffBFBFBF),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Checkbox(
                                value: controller.isChecked.value,
                                onChanged: controller.toggleCheckbox,
                                checkColor: AppColors.primarycolor,
                                activeColor: Color(0xffEDF1F3),
                              ),
                              Text(
                                'Stripe',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xff050505),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                     SizedBox(height: 40,),
                      GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.withdrawsuccessful),
                        child: CommonButton(tittle: 'Withdraw')),
                      SizedBox(height: 20,)
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
