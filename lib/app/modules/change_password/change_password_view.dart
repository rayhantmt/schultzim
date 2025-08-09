import 'package:flutter/material.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80,),

              Text('Forgot password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Color(0xff1B1E28)
              ),
              ),
              SizedBox(height: 20,),
              Text('The password must be different than previous',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff7D848D)
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}