import 'package:flutter/material.dart';

class Formfield extends StatelessWidget {
  const Formfield({
    this.validator,
    super.key,
    this.controller,
    required this.tittle,
    this.icon,
    required this.obsecuretext,
    required this.keyboardtype,
  });
  final TextEditingController? controller;
  final String tittle;
  final Widget? icon;
  final bool obsecuretext;
  final TextInputType keyboardtype;
   final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
     padding: EdgeInsets.only(left: 10),
        height: 52,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xffEDF1F3)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          
           controller: controller,
           validator: validator,
          obscureText: obsecuretext,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: tittle,
            suffixIcon: icon,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff1A1C1E),
            ),
          ),
        ),
      ),
    );
  }
}