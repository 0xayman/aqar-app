import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:morakeb/screens/auth/client/login_screen.dart';
import 'package:morakeb/widgets/vertical_spacer.dart';

class ForgetPasswordSuccessScreen extends StatelessWidget {
  const ForgetPasswordSuccessScreen({super.key});

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
              const Spacer(),
              Center(
                child: Image.asset(
                  "assets/images/check.png",
                  width: 46.91.w,
                  height: 35.76.h,
                ),
              ),
              VerticalSpacer(height: 30.h),
              Center(
                child: Text(
                  "تم تغيير كلمة المرور بنجاح",
                  style: TextStyle(
                    color: const Color(0xFF000F1A),
                    fontSize: 25.sp,
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.to(() => const LoginScreen());
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
            ],
          ),
        ),
      ),
    );
  }
}
