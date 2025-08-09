import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_images.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDBE8E1),
      body: Padding(padding: EdgeInsets.only(left: 20,right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.height*0.1,),
           Image.asset(
                AppImages.loginlogo,
                height: 70,
                width: 150,
                // alignment: Alignment.center,
              ),
            Container(
              height: Get.height*0.8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Color(0xff126535)
                  ),
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0xff6C7278)
                        ),
                        ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.login),
                          child: Text('Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff126535)
                          ),
                          ),
                        )
                      ],
                    ),
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