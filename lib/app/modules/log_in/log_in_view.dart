import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';

import 'package:schultzim/app/modules/log_in/log_in_controller.dart';
import 'package:schultzim/app/utils/app_colors.dart';

import 'package:schultzim/app/utils/app_images.dart';

class LogInView extends StatelessWidget {
  LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    final controrller = Get.find<LogInController>();
    return Scaffold(
      backgroundColor: Color(0xffDBE8E1),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * 0.1),
            Image.asset(
              AppImages.loginlogo,
              height: 70,
              width: 150,
              // alignment: Alignment.center,
            ),
            Container(
              height: Get.height * 0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Text(
                    'Log in',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: AppColors.primarycolor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Create an account or log in to explore our app',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff6C7278),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff6C7278),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Formfield(
                    tittle: 'Rayhantmt@gmail.com',
                    obsecuretext: false,
                    keyboardtype: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff6C7278),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Obx(
                    () => Formfield(
                      tittle: 'Password',
                      obsecuretext: controrller.isObscured.value,
                      keyboardtype: TextInputType.text,
                      icon: GestureDetector(
                        onTap: () => controrller.toggleObscureText(),
                        child: Icon(controrller.isObscured.value
                          ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        )),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) => {
                        value=true
                      },),
                      Text('Remember me',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff6C7278)
                      ),
                      )
                    ],
                  ),
                  CommonButton(tittle: 'Log In'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
