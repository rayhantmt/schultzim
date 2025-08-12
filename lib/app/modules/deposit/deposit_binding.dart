import 'package:get/get.dart';
import 'package:schultzim/app/modules/deposit/deposit_controller.dart';

class DepositBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DepositController>(() =>DepositController() ,);
  }
}