import 'package:get/get.dart';

class IrsPaymentController extends GetxController {
  var depositType = 0.obs; // 0 = On-Time, 1 = Recurring Deposit

  void setDepositType(int type) {
    depositType.value = type;
  }
   var isChecked = false.obs;

  void toggleCheckbox(bool? value) {
    isChecked.value = value ?? false;}
    final List<String> options = ["Monthly", "Weekly", "Quarterly"];

  var selectedIndex = 0.obs; // default Monthly

  void setFrequency(int index) {
    selectedIndex.value = index;
  }
}
