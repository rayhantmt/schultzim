import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key, required this.tittle});
final String tittle;
  @override
  Widget build(BuildContext context) {
    return  Container(
      
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: Color(0xff126535),
      ),
      child: Center(
        child: Text(tittle,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Colors.white
        ),
        ),
      ),
    );
  }
}