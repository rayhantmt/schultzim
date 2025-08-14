import 'package:get/get_navigation/get_navigation.dart';
import 'package:schultzim/app/modules/change_password/change_password_binding.dart';
import 'package:schultzim/app/modules/change_password/change_password_view.dart';
import 'package:schultzim/app/modules/change_password_success/change_password_success_view.dart';
import 'package:schultzim/app/modules/deposit/deposit_binding.dart';
import 'package:schultzim/app/modules/deposit/deposit_view.dart';
import 'package:schultzim/app/modules/deposit_successful/deposit_successful.dart';
import 'package:schultzim/app/modules/edit_profile/edit_profile_view.dart';
import 'package:schultzim/app/modules/forgot_password/forgot_password_view.dart';
import 'package:schultzim/app/modules/irs_payment/irs_payment_view.dart';
import 'package:schultzim/app/modules/log_in/log_in_binding.dart';
import 'package:schultzim/app/modules/log_in/log_in_view.dart';
import 'package:schultzim/app/modules/main_screen/main_screen.dart';
import 'package:schultzim/app/modules/main_screen/main_screen_binding.dart';
import 'package:schultzim/app/modules/notification/notification_view.dart';
import 'package:schultzim/app/modules/otp_sign_up/otp_sign_up_binding.dart';
import 'package:schultzim/app/modules/otp_sign_up/otp_sign_up_view.dart';
import 'package:schultzim/app/modules/otp_verification_forgot_password/otp_binding.dart';
import 'package:schultzim/app/modules/otp_verification_forgot_password/otp_view.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_binding.dart';
import 'package:schultzim/app/modules/sign_up/sign_up_view.dart';
import 'package:schultzim/app/modules/splash/splash_view.dart';
import 'package:schultzim/app/modules/tax/tex_view.dart';
import 'package:schultzim/app/modules/withdraw/withdraw_view.dart';
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
    GetPage(name: AppRoutes.changepasswordsuccess, page: () => ChangePasswordSuccessView(),),
    GetPage(name: AppRoutes.mainscreen, page: () => MainScreenView(),binding: MainScreenBinding()),
    GetPage(name: AppRoutes.editprofile, page: () => EditProfileView(),),
    GetPage(name: AppRoutes.notifications, page: () => NotificationView(),),
    GetPage(name: AppRoutes.deposit, page: () => DepositView(),binding: DepositBinding()),
    GetPage(name: AppRoutes.withdraw, page: () => WithdrawView(),),
    GetPage(name: AppRoutes.irspayment, page: () => IrsPaymentView(),),
    GetPage(name: AppRoutes.tax, page: () => TexView(),),
    GetPage(name: AppRoutes.depositsuccessful, page: () => DepositSuccessful(),)
  ];
}