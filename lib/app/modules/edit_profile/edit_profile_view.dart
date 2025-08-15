import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/common_widgets/log_in_text_field.dart';
import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height*0.25,
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios,
                color: Colors.white,
                ),
                SizedBox(width: Get.width*0.35,),
                Text('Edit Profile',
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
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Center(
                child: Stack(
                  children: [
                    // Profile image
                    CircleAvatar(
                      radius: 50, // adjust size as needed
                      backgroundImage: AssetImage(AppImages.profile),
                    ),
          
                    // Camera icon overlay
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Full Name',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff050505)
                ),
                ),
              ),
              SizedBox(height: 10,),
              Formfield(tittle: 'Rayhan Mia', obsecuretext: false, keyboardtype: TextInputType.text)
     
     ,
     SizedBox(height: 20,),
      Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Email',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff050505)
                ),
                ),
              ),
              SizedBox(height: 10,),
              Formfield(tittle: 'Rayhantmt@gmail.com', obsecuretext: false, keyboardtype: TextInputType.text)
     
     ,
     SizedBox(height: 20,), Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Adress',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff050505)
                ),
                ),
              ),
              SizedBox(height: 10,),
              Formfield(tittle: 'Gulshan,Dhaka,Bangladesh', obsecuretext: false, keyboardtype: TextInputType.text)
     
     ,
     SizedBox(height: 20,), Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Phone Number',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xff050505)
                ),
                ),
              ),
              SizedBox(height: 10,),
              Formfield(tittle: 'Enter your updated phone number', obsecuretext: false, keyboardtype: TextInputType.text)
     
     ,
     SizedBox(height: 20,),
     GestureDetector(
      onTap: () => Get.back(),
      child: CommonButton(tittle: 'Save Changes'))
                ],
              ),
            )
          ))
        ],
      ),
    );
  }
}