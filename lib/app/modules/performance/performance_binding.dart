import 'package:get/get.dart';

import 'package:schultzim/app/modules/performance/performance_controller.dart';

class PerformanceBinding extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut<PerformanceController>(() => PerformanceController(),);
  }
}