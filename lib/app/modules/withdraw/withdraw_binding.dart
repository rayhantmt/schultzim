import 'package:get/get.dart';
import 'package:schultzim/app/modules/withdraw/withdraw_controller.dart';

class WithdrawBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<WithdrawController>(() => WithdrawController());
  }
}