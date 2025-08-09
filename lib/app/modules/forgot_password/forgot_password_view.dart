import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/routes/app_routes.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Text('Forgot password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color(0xff050505)
              
              ),
              ),
              SizedBox(height: 20,),
              Text('Enter your email account to reset  your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff7D848D)
              ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Text('Your email',
                  
                  style: TextStyle(
                    
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff050505)
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xffCCCCCC)
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Formfield(tittle: 'Enter your email', obsecuretext: false, keyboardtype: TextInputType.emailAddress),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.otp),
                child: CommonButton(tittle: 'Verify'))
            ],
          ),
        ),
      ),
    );
  }
}