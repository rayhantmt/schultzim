import 'package:get/get.dart';
import 'package:schultzim/app/modules/deposit/deposit_controller.dart';

class IrsPaymentBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DepositController>(() =>DepositController() );
  }
}