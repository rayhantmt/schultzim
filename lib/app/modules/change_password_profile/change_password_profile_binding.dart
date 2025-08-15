import 'package:get/get.dart';

import 'package:schultzim/app/modules/change_password_profile/change_password_profile_controller.dart';

class ChangePasswordProfileBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<ChangePasswordProfileController>(() => ChangePasswordProfileController());
  }
}