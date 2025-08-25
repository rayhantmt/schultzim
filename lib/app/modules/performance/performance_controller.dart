import 'package:get/get.dart';
import 'package:schultzim/app/modules/performance/performance_model.dart';
import 'package:schultzim/app/utils/app_images.dart';

class PerformanceController extends GetxController {
  /// List of transactions (static for now, but later you can fetch from API)
  final transactions = <Transaction>[
    Transaction(
      title: 'Deposit',
      date: 'Due on April 15, 2025',
      amount: '\$500',
      imageUrl: AppImages.deposit,
    ),
    Transaction(
      title: 'Payment to IRS',
      date: 'Due on April 15, 2025',
      amount: '\$1000',
      imageUrl: AppImages.irs,
    ),
    Transaction(
      title: 'Deposit',
      date: 'Due on April 15, 2025',
      amount: '\$200',
      imageUrl: AppImages.deposit,
    ),
  ].obs; // 🔹 Made it observable in case you want live updates later

  /// Monthly chart data
  var monthlyDataList = <MonthlyData>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadDummyData();
  }

  void loadDummyData() {
    monthlyDataList.assignAll([
      MonthlyData(month: "Jan", value: 30),
      MonthlyData(month: "Feb", value: 50),
      MonthlyData(month: "Mar", value: 20),
      MonthlyData(month: "Apr", value: 80),
      MonthlyData(month: "May", value: 60),
      MonthlyData(month: "Jun", value: 40),
    ]);
  }
}
