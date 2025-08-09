import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_controller.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_images.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignUpController>();
    return Scaffold(
      backgroundColor: Color(0xffDBE8E1),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
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
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 26,
                        color: Color(0xff126535),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0xff6C7278),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.login),
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xff126535),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text(
                            'Name',
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
                      tittle: 'Rayhan',
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
                            'Phone number',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color(0xff6C7278),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Obx(
                          () => CountryCodePicker(
                            onChanged: (code) => controller.countryCode.value =
                                code.dialCode ?? '+880',
                            initialSelection: controller.countryCode.value,
                            favorite: ['+880', 'BD'],
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                        ),

                        Expanded(
                          child: Formfield(
                            tittle: 'Enter you phone number',
                            obsecuretext: false,
                            keyboardtype: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Obx(
                      () => Formfield(
                        tittle: 'Enter Password',
                        obsecuretext: controller.isObscured.value,
                        keyboardtype: TextInputType.text,
                        icon: GestureDetector(
                          onTap: controller.toggleObscureText,
                          child: Icon(
                            controller.isObscured.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Obx(
                      () => Formfield(
                        tittle: 'Confirmed Password',
                        obsecuretext: controller.isObscured1.value,
                        keyboardtype: TextInputType.text,
                        icon: GestureDetector(
                          onTap: controller.toggleObscureText1,
                          child: Icon(
                            controller.isObscured1.value
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.otpsignup),
                      child: CommonButton(tittle: 'Sign up'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
