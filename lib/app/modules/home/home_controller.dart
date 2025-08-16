import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:schultzim/app/modules/home/home_model.dart';
import 'package:schultzim/app/utils/app_images.dart';

class HomeController extends GetxController {
  // This is where you store your list data
  final List<Transaction> transactions = [
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
  ];
}