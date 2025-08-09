import 'package:get/get_navigation/get_navigation.dart';
import 'package:schultzim/app/modules/change_password/change_password_binding.dart';
import 'package:schultzim/app/modules/change_password/change_password_view.dart';
import 'package:schultzim/app/modules/change_password_success/change_password_success_view.dart';
import 'package:schultzim/app/modules/forgot_password/forgot_password_view.dart';
import 'package:schultzim/app/modules/log_in/log_in_binding.dart';
import 'package:schultzim/app/modules/log_in/log_in_view.dart';
import 'package:schultzim/app/modules/otp_sign_up/otp_sign_up_binding.dart';
import 'package:schultzim/app/modules/otp_sign_up/otp_sign_up_view.dart';
import 'package:schultzim/app/modules/otp_verification_forgot_password/otp_binding.dart';
import 'package:schultzim/app/modules/otp_verification_forgot_password/otp_view.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_binding.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_view.dart';
import 'package:schultzim/app/modules/splash/splash_view.dart';
import 'package:schultzim/app/routes/app_routes.dart';

class AppPages {
  static final pages=[
    GetPage(name: AppRoutes.login, page:() =>  LogInView(),binding: LoginBinding()),
    GetPage(name: AppRoutes.splash, page: () => SplashView(),),
    GetPage(name: AppRoutes.signup, page: () => SignUpView(),binding: SignUpBinding()),
    GetPage(name: AppRoutes.otp, page: () => OtpVerificationView(),binding: OtpBinding()),
    GetPage(name: AppRoutes.otpsignup, page: () => OtpSignUpView(),binding: OtpSignUpBinding()),
    GetPage(name: AppRoutes.forgotpassword, page: () => ForgotPasswordView(),),
    GetPage(name: AppRoutes.changepasswotd, page: () => ChangePasswordView(),binding: ChangePasswordBinding()),
    GetPage(name: AppRoutes.changepasswordsuccess, page: () => ChangePasswordSuccessView(),)
  ];
}