import 'package:flutter/material.dart';

class ChangePasswordSuccessView extends StatelessWidget {
  const ChangePasswordSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text('Forgot password',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 26,
              color: Color(0xff090909)
            ),
            )
          ],
        ),
      ),
    );
  }
}