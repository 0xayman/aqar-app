import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:morakeb/screens/auth/client/create_new_account_screen.dart';
import 'package:morakeb/screens/auth/client/create_password_screen.dart';
import 'package:morakeb/screens/auth/client/forget_password_first_screen.dart';
import 'package:morakeb/widgets/horizontal_spacer.dart';
import 'package:morakeb/widgets/vertical_spacer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              Center(
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                    color: const Color(0xFF000F1A),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              VerticalSpacer(height: 32.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: const Color(0xFFE5E5E5),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: Image.asset(
                        "assets/images/google-icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    HorizontalSpacer(width: 12.w),
                    Text(
                      "تسجيل الدخول بواسطة جوجل",
                      style: TextStyle(
                        color: const Color(0xFF455058),
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              VerticalSpacer(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: const Color(0xFFE5E5E5),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: Image.asset(
                        "assets/images/facebook-icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    HorizontalSpacer(width: 12.w),
                    Text(
                      "تسجيل الدخول بواسطة فيس بوك",
                      style: TextStyle(
                        color: const Color(0xFF455058),
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              VerticalSpacer(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1.h,
                      color: const Color(0xFFE5E5E5),
                    ),
                  ),
                  HorizontalSpacer(width: 16.w),
                  Text(
                    "أو",
                    style: TextStyle(
                      color: const Color(0xFF455058),
                      fontSize: 13.sp,
                    ),
                  ),
                  HorizontalSpacer(width: 16.w),
                  Expanded(
                    child: Container(
                      height: 1.h,
                      color: const Color(0xFFE5E5E5),
                    ),
                  ),
                ],
              ),
              VerticalSpacer(height: 24.h),
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
                      Icons.email_outlined,
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
              VerticalSpacer(height: 16.h),
              Text(
                "كلمة المرور",
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
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "كلمة المرور",
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
              VerticalSpacer(height: 16.h),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(() => const ForgetPasswordFirstScreen());
                  },
                  child: Text(
                    "نسيت كلمة المرور؟",
                    style: TextStyle(
                      color: const Color(0xFF0069FE),
                      fontSize: 13.sp,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.to(() => const CreateNewPasswordScreen());
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
                      "تسجيل الدخول",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ليس لديك حساب؟ ",
                    style: TextStyle(
                      color: const Color(0xFF455058),
                      fontSize: 16.sp,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const ClientCreateNewAccountScreen());
                    },
                    child: Text(
                      "انشئ حسابك",
                      style: TextStyle(
                        color: const Color(0xFF0069FE),
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ],
              ),
              VerticalSpacer(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
// 000F1A