import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/home_container.dart';
import 'package:schultzim/app/modules/home/home_controller.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_colors.dart';
import 'package:schultzim/app/utils/app_images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.25,
            child: Row(
              children: [
                SizedBox(width: 5),
                Image.asset(AppImages.profile, height: 50, width: 50),
                SizedBox(width: 5),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello Rayhan',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      "Let's Start Exploring",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.notifications),
                    child: Icon(
                      Icons.notifications,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        height: Get.height * 0.1,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Total Balance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff737373),
                                  ),
                                ),
                                Text(
                                  '\$ 56,786',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 29,
                                    color: Color(0xff050505),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward, size: 30),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffEDF1F3),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            
                              children: [
                                Center(
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Interest Earned this year',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xff737373),
                                    ),
                                  ),
                                ),
                                Text(
                                  "\$33.50",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff050505),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 100,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffEDF1F3),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  textAlign: TextAlign.center,
                                  'Expected EOY Balance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xff737373),
                                  ),
                                ),
                                Text(
                                  "\$7500.50",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xff050505),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text("No more deposits and using today's interest rate"),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.deposit),
                            child: HomeContainer(
                              tittle: 'Deposit',
                              ic: Icons.arrow_downward,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.withdraw),
                            child: HomeContainer(
                              tittle: 'Withdraw',
                              ic: Icons.payment,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.irspayment),
                            child: HomeContainer(
                              tittle: 'Make IRS Payment',
                              ic: Icons.pie_chart_outline_sharp,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.tax),
                            child: HomeContainer(
                              tittle: 'Tax Information',
                              ic: Icons.insert_drive_file_outlined,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Upcoming Transactions',

                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                      
                 
                      ListView.builder(
                        itemCount: controller.transactions.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final data = controller.transactions[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            child: Container(
                              height: 70,
                              width: double.infinity,
                             
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xffE6E6E6),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(data.imageUrl,
                                  height: 33,
                                  width: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(data.title,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xff050505)
                                      ),
                                      ),
                                      Text(data.date,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff737373)
                                      ),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Text(data.amount),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
