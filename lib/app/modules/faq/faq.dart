import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height*0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(Icons.arrow_circle_left_outlined,
                  size: 45,
                  color: Colors.white,
                  ),
                ),
                Text('Faq',
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Text('Frequently Asked Questions',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black
                    ),
                    ),
                    SizedBox(height: 20,),
                    Text('What is the most popular online shopping store?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Color(0xff0F0F0F)
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,
                    color: Color(0xff8D8D8D)
                    ),
                    ),
                    SizedBox(height: 20,),
                    Text('What is the most popular online shopping store?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Color(0xff0F0F0F)
                    ),
                    ),
                     SizedBox(height: 10,),
                    Text('Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,
                    color: Color(0xff8D8D8D)
                    ),
                    ),
                    SizedBox(height: 20,),
                    Text('What is the most popular online shopping store?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Color(0xff0F0F0F)
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,
                    color: Color(0xff8D8D8D)
                    ),
                    ),
                    SizedBox(height: 20,),
                    Text('What is the most popular online shopping store?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Color(0xff0F0F0F)
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,
                    color: Color(0xff8D8D8D)
                    ),
                    ),
                    SizedBox(height: 20,),
                    Text('What is the most popular online shopping store?',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      color: Color(0xff0F0F0F)
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('Morbi adipiscing gravida dolor dui tincidunt libero. Duis malesuada massa libero nec accumsan nunc gravida.',
                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,
                    color: Color(0xff8D8D8D)
                    ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}