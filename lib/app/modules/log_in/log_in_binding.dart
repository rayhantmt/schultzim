import 'package:get/get.dart';
import 'package:schultzim/app/modules/log_in/log_in_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogInController>(() => LogInController(),);
  }
}