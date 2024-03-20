import 'package:aqar/home_screen.dart';
import 'package:aqar/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class PropertyScreen extends StatelessWidget {
  const PropertyScreen({super.key, required this.property});

  final Property property;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              VerticalSpacer(height: 20.w),
              Stack(
                children: [
                  PropertyCard(property: property),
                  Positioned(
                      top: 15.h,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Iconsax.arrow_left_2,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
              VerticalSpacer(height: 20.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ultrices vehicula arcu sit amet dignissim. Nam sit amet elit tristique, molestie massa faucibus, pharetra arcu. Sed ligula ligula, consectetur vel lacinia vel, scelerisque non odio. Mauris quis elementum dolor. Ut tristique sem mattis metus consequat, ac scelerisque nibh vestibulum. Quisque nec mollis dolor. Maecenas vestibulum imperdiet rhoncus. Nullam sit amet ligula convallis, gravida risus ac, condimentum diam. Vivamus in rhoncus odio, sit amet fermentum lectus. Aenean quis nisl vel est pretium fringilla.",
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF003580),
          child: const Icon(
            Iconsax.message_2,
            color: Colors.white,
          ),
        ));
  }
}
