import 'package:aqar/translation/translation.dart';
import 'package:aqar/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        image: const DecorationImage(
          image: AssetImage('assets/images/town_skyline.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Color(0xFF003580),
            BlendMode.screen,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpacer(height: 20.h),
          Icon(
            Iconsax.menu_1,
            color: Colors.white,
            size: 30.sp,
          ),
          VerticalSpacer(height: 20.h),
          Image.asset(
            'assets/images/min-logo.png',
            width: 100.w,
          ),
          const Spacer(),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
              hintText: AppTranslations.homeSearchHint.tr,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 13.5.sp,
              ),
              suffixIcon: const Icon(
                Iconsax.search_normal,
                color: Color(0xFF003580),
              ),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
