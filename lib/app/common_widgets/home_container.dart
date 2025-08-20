import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key, required this.tittle, required this.ic});
final String tittle;
final IconData ic;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: Get.width*0.4,
      decoration: BoxDecoration(
        color: Color(0xffEDF1F3),
        borderRadius: BorderRadius.circular(99)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(ic),
        Text(tittle,
         overflow: TextOverflow.ellipsis,
         maxLines: 1,
        style: TextStyle(
          
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Colors.black

        ),
        )
      ],),
    );
  }
}