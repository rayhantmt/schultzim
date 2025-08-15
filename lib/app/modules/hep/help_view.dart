import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Help & Support',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          color: Color(0xff3C3C3C)
        ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(AppImages.splashlogo,
          color: AppColors.primarycolor,
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone,
              color: AppColors.primarycolor,
              ),
              Text('+354 374747848')
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email,
              color: AppColors.primarycolor,
              ),
              Text('admin@gmail.com')
            ],
          )
          
        ],
      ),
    );
  }
}