import 'package:get/get_navigation/get_navigation.dart';
import 'package:schultzim/app/modules/log_in/log_in_binding.dart';
import 'package:schultzim/app/modules/log_in/log_in_view.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_binding.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_view.dart';
import 'package:schultzim/app/modules/splash/splash_view.dart';
import 'package:schultzim/app/routes/app_routes.dart';

class AppPages {
  static final pages=[
    GetPage(name: AppRoutes.login, page:() =>  LogInView(),binding: LoginBinding()),
    GetPage(name: AppRoutes.splash, page: () => SplashView(),),
    GetPage(name: AppRoutes.signup, page: () => SignUpView(),binding: SignUpBinding())
  ];
}