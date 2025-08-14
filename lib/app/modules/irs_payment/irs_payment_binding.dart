import 'package:get/get.dart';

import 'package:schultzim/app/modules/irs_payment/irs_payment_controller.dart';

class IrsPaymentBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<IrsPaymentController>(() =>IrsPaymentController() );
  }
}