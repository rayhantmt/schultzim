import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/modules/deposit/deposit_controller.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class DepositView extends StatelessWidget {
  const DepositView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.find<DepositController>();
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
                Obx(() {
              return Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => controller.setDepositType(0),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: controller.depositType.value == 0
                              ? Colors.green
                              : Colors.grey[200],
                          borderRadius:
                              BorderRadius.horizontal(left: Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            "On-Time",
                            style: TextStyle(
                              color: controller.depositType.value == 0
                                  ? Colors.white
                                  : Colors.green,
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
                              ? Colors.green
                              : Colors.grey[200],
                          borderRadius:
                              BorderRadius.horizontal(right: Radius.circular(20)),
                        ),
                        child: Center(
                          child: Text(
                            "Recurring Deposit",
                            style: TextStyle(
                              color: controller.depositType.value == 1
                                  ? Colors.white
                                  : Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),

              ],
            ),
          ))
        ],
      ),
    );
  }
}