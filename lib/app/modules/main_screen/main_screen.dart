import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/modules/main_screen/main_screen_controller.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
final mainscreencontroller= Get.find<MainScreenController>();
 final List<Widget> screens = [
  //   HomeView(),
  //  PerfonrrmanceView();
  //  ProfileView()
  ];

    return Scaffold(
      backgroundColor: Colors.white,
      body:Obx(()=>screens[mainscreencontroller.currentIndex.value] ),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
        onTap: mainscreencontroller.changeTab,
        currentIndex: mainscreencontroller.currentIndex.value,
        selectedItemColor: Color(0xff08692C),
        unselectedItemColor:Color(0xff010101),
        backgroundColor: Colors.white,
      
        
        items:[ BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
     
        BottomNavigationBarItem(icon: Icon(Icons.pie_chart),label: 'Performance'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
        
        
        ]),)
    );
  }
}