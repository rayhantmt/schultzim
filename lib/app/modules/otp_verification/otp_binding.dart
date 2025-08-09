import 'package:get/get.dart';
import 'package:schultzim/app/modules/otp_verification/otp_controller.dart';

class OtpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController());
  }
}