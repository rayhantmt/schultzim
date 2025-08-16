import 'package:get/get.dart';
import 'package:schultzim/app/modules/home/home_controller.dart';
import 'main_screen_controller.dart';

class MainScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController());
     Get.lazyPut<HomeController>(() => HomeController(),);
  }
}