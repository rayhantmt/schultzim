import 'package:flutter/material.dart';

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
    );
  }
}