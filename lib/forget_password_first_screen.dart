import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:morakeb/screens/auth/client/forget_password_otp_screen.dart';
import 'package:morakeb/widgets/vertical_spacer.dart';

class ForgetPasswordFirstScreen extends StatelessWidget {
  const ForgetPasswordFirstScreen({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF000F1A),
                    ),
                  ),
                  Text(
                    "نسيت كلمة المرور",
                    style: TextStyle(
                      color: const Color(0xFF000F1A),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(),
                ],
              ),
              VerticalSpacer(height: 30.h),
              Text(
                "أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك تعليمات لإعادة تعيين كلمة المرور الخاصة بك.",
                style: TextStyle(
                  color: const Color(0xFF455058),
                  fontSize: 13.sp,
                ),
              ),
              VerticalSpacer(height: 32.h),
              Text(
                "البريد الإلكتروني",
                style: TextStyle(
                  color: const Color(0xFF000F1A),
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.start,
              ),
              VerticalSpacer(height: 8.h),
              SizedBox(
                height: 44.h,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "mail@example.com",
                    hintStyle: TextStyle(
                      color: const Color(0xFF8C9398),
                      fontSize: 13.sp,
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Color(0xFF8C9398),
                    ),
                    suffixIcon: const Icon(
                      Icons.visibility_outlined,
                      color: Color(0xFF8C9398),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xFFE5E5E5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: const BorderSide(
                        color: Color(0xFF0069FE),
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.to(() => const ForgetPasswordOTPScreen());
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
                      "إرسال",
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
