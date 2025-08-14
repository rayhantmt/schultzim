import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/modules/irs_payment/irs_payment_controller.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class IrsPaymentView extends StatelessWidget {
  const IrsPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<IrsPaymentController>();
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
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffEDF1F3),
                        border: Border.all(
                          width: 1,
                           color: Color(0xffEDF1F3)
                        ),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Total IRS Payment',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff050505)
                          ),
                          ),
                          Text('\$345',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff050505)
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
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
  final con = Get.find<IrsPaymentController>();
  return Expanded(
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'IRS amount',
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
            Text('Name',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff050505)
              ),
            ),
            SizedBox( height: 20,),
            Formfield(tittle: 'Name', obsecuretext: false, keyboardtype: TextInputType.text),
            SizedBox(height: 20),
            Text('Phone',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff050505)
              ),
            ),
            SizedBox( height: 20,),
            Formfield(tittle: 'Enter number', obsecuretext: false, keyboardtype: TextInputType.text), 
            SizedBox(height: 20),
            Text('Ein Number',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff050505)
              ),
            ),
            SizedBox( height: 20,),
            Formfield(tittle: 'Enter', obsecuretext: false, keyboardtype: TextInputType.text), 
            SizedBox(height: 20),
            Text('Address(city, state-zip)',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff050505)
              ),
            ),
            SizedBox( height: 20,),
            Formfield(tittle: 'Enter', obsecuretext: false, keyboardtype: TextInputType.text),
             SizedBox(height: 20),
            Text('Tax Year',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff050505)
              ),
            ),
            SizedBox( height: 20,),
            Formfield(tittle: 'Enter', obsecuretext: false, keyboardtype: TextInputType.text),
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
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.depositsuccessful),
              child: CommonButton(tittle: 'Confirm Deposit')),
            SizedBox(height: 20),
          ],
        ),
      ),
    ),
  );
}

Widget _recurringDepositForm() {
  final c=Get.find<IrsPaymentController>();
  return Expanded(
    child: SingleChildScrollView(
      child: Padding(
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
            SizedBox(height: 20,),
            Row(
              children: List.generate(c.options.length, (index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio<int>(
                      activeColor: AppColors.primarycolor,
                      value: index,
                      groupValue: c.selectedIndex.value,
                      onChanged: (value) {
                        c.setFrequency(value!);
                      },
                    ),
                    Text(c.options[index]),
                  ],
                );
              }),
            ),
            SizedBox(height: 20,),
            Text('Expire Date',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Color(0xff050505)
              ),
            ),
            SizedBox(height: 10,),
            Formfield(tittle: '23/7/2025', obsecuretext: false, keyboardtype: TextInputType.number,icon: Icon(Icons.calendar_month),),
            SizedBox(height: 20,),
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
                    value: c.isChecked.value,
                    onChanged: c.toggleCheckbox,
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
            SizedBox(height: 20),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.depositsuccessful),
              child: CommonButton(tittle: 'Confirm Deposit')),
            SizedBox(height: 20),
          ],
        ),
      ),
    ),
  );
}
