import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:schultzim/app/common_widgets/common_button.dart';
import 'package:schultzim/app/modules/otp_verification_forgot_password/otp_controller.dart';
import 'package:schultzim/app/routes/app_routes.dart';
import 'package:schultzim/app/utils/app_images.dart';

class OtpVerificationView extends StatelessWidget {
   OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<OtpController>();

    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.otplogo,
            height: 77,
            width: 81,
            ),
            const Text(
              "Verify your email",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color(0xff050505),
              ),
            ),
            const SizedBox(height: 12),
           
            const SizedBox(height: 4),
             Text(
              "Please enter the verification code we sent to your email address to complete the verification process.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff595959),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(6, (index) {
                return SizedBox(
                  width: 40,
                  child: TextField(
                    controller: controller.otpControllers[index],
                    focusNode: controller.otpFocusNodes[index],
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: const InputDecoration(
                      counterText: '',
                      border: UnderlineInputBorder(),
                    ),
                    onChanged: (value) {
                      controller.onOtpFieldChanged(value, index);
                    },
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),
            Obx(() => GestureDetector(
                  onTap: controller.secondsRemaining.value == 0
                      ? controller.resendCode
                      : null,
                  child: Text(
                    controller.secondsRemaining.value == 0
                        ? "Resend code"
                        : "Resend code ${controller.secondsRemaining}s",
                    style: TextStyle(
                      color: controller.secondsRemaining.value == 0
                          ? const Color(0xFF1B1E28)
                          : const Color(0xFF7D848D),
                    ),
                  ),
                )),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.changepasswotd),
              child: CommonButton(tittle: 'Verify'))
          ],
        ),
      ),
    );
  }
}