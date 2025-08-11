import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key, required this.tiitle, required this.ic});
final String tiitle;
final Icon ic;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*0.07,
      width: double.infinity,
      child: Row(
        children: [
ic,
SizedBox(width: Get.width*0.02,),
Text(tiitle,
style: TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: Color(0xff050505)
),
),
Spacer(),
Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}