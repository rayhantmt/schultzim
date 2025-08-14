import 'package:get/get.dart';

class WithdrawController extends GetxController{

 var depositType = 0.obs; // 0 = On-Time, 1 = Recurring Deposit

  void setDepositType(int type) {
    depositType.value = type;
  }
   var isChecked = false.obs;

  void toggleCheckbox(bool? value) {
    isChecked.value = value ?? false;}



}