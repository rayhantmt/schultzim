import 'package:get/get.dart';
import 'package:schultzim/app/modules/otp_sign_up/otp_sign_up_controller.dart';


class OtpSignUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<OtpSignUpController>(() => OtpSignUpController());
  }
}