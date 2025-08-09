import 'package:get/get.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_controller.dart';

class SignUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController());
  }
}