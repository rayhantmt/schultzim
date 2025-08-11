import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key, required this.tiitle, required this.ic});
final String tiitle;
final Icon ic;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height*0.2,
      width: double.infinity,
      child: Row(
        children: [
ic,
SizedBox(width: Get.width*0.3,),
Text(tiitle),
Spacer(),
Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}