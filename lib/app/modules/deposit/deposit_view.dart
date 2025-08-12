import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/modules/deposit/deposit_controller.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class DepositView extends StatelessWidget {
  const DepositView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DepositController>();
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.15,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: Get.width * 0.25),
                Text(
                  'Add Deposit',
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
              height: double.infinity,
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Obx(() {
                      return Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => controller.setDepositType(0),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: controller.depositType.value == 0
                                      ? AppColors.primarycolor
                                      : Color(0xffE7F0EB),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "On-Time",
                                    style: TextStyle(
                                      color: controller.depositType.value == 0
                                          ? Colors.white
                                          : Color(0xff126535),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => controller.setDepositType(1),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                  color: controller.depositType.value == 1
                                      ? AppColors.primarycolor
                                      : Color(0xffE7F0EB),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    "Recurring Deposit",
                                    style: TextStyle(
                                      color: controller.depositType.value == 1
                                          ? Colors.white
                                          : Color(0xff126535),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  Expanded(
                    child: Obx(() {
                      if (controller.depositType.value == 0) {
                        return _onTimeDepositForm();
                      } else {
                        return _recurringDepositForm();
                      }
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _onTimeDepositForm() {
  final con = Get.find<DepositController>();
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'Amount',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xff050505),
          ),
        ),
        SizedBox(height: 10),
        Formfield(
          tittle: '\$ 55.00',
          obsecuretext: false,
          keyboardtype: TextInputType.number,
        ),
        SizedBox(height: 20),
        Text(
          'Payment Method',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xff050505),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffEDF1F3),
            border: Border.all(width: 1, color: Color(0xffBFBFBF)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Checkbox(
                value: con.isChecked.value,
                onChanged: con.toggleCheckbox,
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
        Spacer(),
        CommonButton(tittle: 'Confirm Deposit'),
        SizedBox(height: 20),
      ],
    ),
  );
}

Widget _recurringDepositForm() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'Amount',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xff050505),
          ),
        ),
        SizedBox(height: 10),
        Formfield(
          tittle: '\$ 458',
          obsecuretext: false,
          keyboardtype: TextInputType.number,
        ),
      ],
    ),
  );
}
