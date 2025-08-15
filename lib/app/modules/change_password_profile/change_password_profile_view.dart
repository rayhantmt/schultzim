import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';

import 'package:schultzim/app/modules/change_password_profile/change_password_profile_controller.dart';
import 'package:schultzim/app/routes/app_routes.dart';

class  ChangePasswordProfileView extends StatelessWidget {
  const  ChangePasswordProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ChangePasswordProfileController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              SizedBox(height: 80,),
          
              Text('Change password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Color(0xff1B1E28)
              ),
              ),
              SizedBox(height: 20,),
              Text('The password must be different than previous',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff7D848D)
              ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text('Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xff050505)
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
           Obx(
                      () => Formfield(
                        tittle: 'Enter your new password',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Text('Confirmed Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff050505)
                          ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Obx(
                      () => Formfield(
                        tittle: 'Re-enter Password',
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
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.changepasswordsuccess),
                      child: CommonButton(tittle: 'Update Password'))
            ],
          ),
        ),
      ),
    );
  }
}