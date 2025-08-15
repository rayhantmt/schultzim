
import 'package:flutter/material.dart';


class TermOfUse extends StatelessWidget {
  const TermOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Terms and Condition',
        
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          color: Color(0xff3C3C3C)
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Text('Lorem ipsum dolor sit amet consectetur. Mauris cursus laoreet ut egestas. Faucibus elit nunc luctus felis. Nullam faucibus quisque tristique elementum sagittis tempus at lectus. Mattis ipsum amet eu aliquam lorem mi scelerisque sodales viverra. Convallis pretium consequat risus ut augue. Parturient at aliquam egestas diam sed. Sagittis et malesuada sem cras. Maecenas eu aliquam id feugiat gravida nisl ultricies. Integer dui odio nibh quis. Faucibus a luctus amet enim lobortis odio. In turpis sed quam sed etiam senectus bibendum in a. Sagittis dui fringilla morbi sit interdum netus. Lacinia nulla at fusce pellentesque elementum suscipit venenatis. Nisl id aliquet quis id sed cursus vel senectus risus. Neque donec aliquet urna dictumst. Tortor semper lorem lacus ipsum commodo. Eget amet urna montes libero enim in semper. Nisi vivamus consectetur euismod ut eget sit ultricies cursus lectus. Nisl cursus fermentum tempor at.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Colors.black
          ),
          ),
        ),
      ),
    );
  }
}