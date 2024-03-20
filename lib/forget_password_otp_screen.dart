import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morakeb/screens/auth/client/forget_password_create_sceen.dart';
import 'package:morakeb/widgets/vertical_spacer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgetPasswordOTPScreen extends StatelessWidget {
  const ForgetPasswordOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.sp,
        ),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpacer(height: 50.h),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF000F1A),
                ),
              ),
              VerticalSpacer(height: 32.h),
              Center(
                child: SizedBox(
                  width: 64.w,
                  height: 64.h,
                  child: Image.asset(
                    "assets/images/sms-tracking.png",
                  ),
                ),
              ),
              VerticalSpacer(height: 32.h),
              Text(
                "تم إرسال رابط إعادة تعيين كلمة المرور",
                style: TextStyle(
                  color: const Color(0xFF000F1A),
                  fontSize: 25.sp,
                ),
                textAlign: TextAlign.center,
              ),
              VerticalSpacer(height: 16.h),
              Text(
                "أدخل رمز التحقق المكون من 4 أرقام المرسل إلى mail@example.com",
                style: TextStyle(
                  color: const Color(0xFF000F1A),
                  fontSize: 13.sp,
                ),
                textAlign: TextAlign.center,
              ),
              VerticalSpacer(height: 32.h),
              Center(
                child: SizedBox(
                  width: 240.w,
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (value) {},
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8.0),
                      borderWidth: 1.w,
                      inactiveBorderWidth: 1.w,
                      disabledBorderWidth: 1.w,
                      errorBorderWidth: 1.w,
                      activeBorderWidth: 1.w,
                      selectedBorderWidth: 1.w,
                      fieldHeight: 48.h,
                      fieldWidth: 48.w,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      activeColor: const Color(0xFF4D97FF),
                      inactiveColor: const Color(0xFFD9DBDD),
                      selectedFillColor: Colors.white,
                      selectedColor: const Color(0xFF4D97FF),
                    ),
                  ),
                ),
              ),
              VerticalSpacer(height: 20.h),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "اعد ارسال الرمز ",
                    style: TextStyle(
                      color: const Color(0xFF8C9398),
                      fontSize: 16.sp,
                      fontFamily: GoogleFonts.almarai().fontFamily,
                    ),
                    children: const [
                      TextSpan(
                        text: "بعد ",
                        style: TextStyle(
                          color: Color(0xFF455058),
                        ),
                      ),
                      TextSpan(
                        text: "30",
                        style: TextStyle(
                          color: Color(0xFF0069FE),
                        ),
                      ),
                      TextSpan(
                        text: "ثانية",
                        style: TextStyle(
                          color: Color(0xFF0069FE),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.to(() => const ForgetPasswordCreateScreen());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color(0xFF4D97FF),
                        Color(0xFF0069FE),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.h,
                    ),
                    child: Text(
                      "تأكيد",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              VerticalSpacer(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
