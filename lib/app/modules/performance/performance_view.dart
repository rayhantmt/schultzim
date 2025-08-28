import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/modules/performance/performance_controller.dart';
import 'package:schultzim/app/utils/app_colors.dart';

class PerformanceView extends StatelessWidget {
  const PerformanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PerformanceController>();
    return Scaffold(
      backgroundColor: AppColors.primarycolor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.25,
            child: Row(
              children: [
                Icon(Icons.pie_chart, size: 65, color: Colors.white),
                SizedBox(width: 20),
                Text(
                  'Performance',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
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
                      Text(
                        'Account Value',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xff050505),
                        ),
                      ),
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffEDF1F3),
                        ),
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            maxY:
                                controller.monthlyDataList
                                    .map((e) => e.value)
                                    .reduce((a, b) => a > b ? a : b) +
                                10,
                            barGroups: controller.monthlyDataList.map((data) {
                              return BarChartGroupData(
                                x: controller.monthlyDataList.indexOf(data),
                                barRods: [
                                  BarChartRodData(
                                    toY: data.value,
                                    color: AppColors.primarycolor,
                                    width: 18,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ],
                              );
                            }).toList(),
                            titlesData: FlTitlesData(
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget:
                                      (double value, TitleMeta meta) {
                                        int index = value.toInt();
                                        if (index <
                                            controller.monthlyDataList.length) {
                                          return Text(
                                            controller
                                                .monthlyDataList[index]
                                                .month,
                                          );
                                        }
                                        return const Text("");
                                      },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Year-End Value',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffEDF1F3),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '2023',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color(0xff050505),
                              ),
                            ),
                            Text(
                              '\$ 45',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xff050505),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Growth This Year',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xff050505),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffEDF1F3),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Total Interest',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Color(0xff050505),
                              ),
                            ),
                            Text(
                              '\$ 2342',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0xff050505),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Upcoming Transactions',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Color(0xff050505),
                        ),
                      ),
                      ListView.builder(
                        itemCount: controller.transactions.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final data = controller.transactions[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                                  Image.asset(
                                    data.imageUrl,
                                    height: 33,
                                    width: 33,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        data.title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Color(0xff050505),
                                        ),
                                      ),
                                      Text(
                                        data.date,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Color(0xff737373),
                                        ),
                                      ),
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
