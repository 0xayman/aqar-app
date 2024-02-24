import 'package:aqar/translation/translation.dart';
import 'package:aqar/widgets/bottom_navigation.dart';
import 'package:aqar/widgets/home/home_header.dart';
import 'package:aqar/widgets/horizontal_spacer.dart';
import 'package:aqar/widgets/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PropertyType {
  final String name;
  final IconData icon;

  PropertyType({
    required this.name,
    required this.icon,
  });
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<PropertyType> propertyTypes = [
    PropertyType(
      name: AppTranslations.villa.tr,
      icon: Icons.villa_rounded,
    ),
    PropertyType(
      name: AppTranslations.apartment.tr,
      icon: Icons.apartment_rounded,
    ),
    PropertyType(
      name: AppTranslations.office.tr,
      icon: Icons.business_rounded,
    ),
    PropertyType(
      name: AppTranslations.duplex.tr,
      icon: Icons.home_work_rounded,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const HomeHeader(),
          VerticalSpacer(height: 20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTranslations.lookingFor.tr,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  VerticalSpacer(height: 10.h),
                  SizedBox(
                    height: 50.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => PropertyTypeCard(
                        propertyType: propertyTypes[index],
                      ),
                      separatorBuilder: (context, index) =>
                          HorizontalSpacer(width: 10.w),
                      itemCount: 4,
                    ),
                  ),
                  VerticalSpacer(height: 20.h),
                  Text(
                    AppTranslations.latestOffers.tr,
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  VerticalSpacer(height: 10.h),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(bottom: 20.h),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Container(
                        height: 200.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.grey[200],
                        ),
                      ),
                      separatorBuilder: (context, index) =>
                          VerticalSpacer(height: 10.h),
                      itemCount: 5,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}

class PropertyTypeCard extends StatelessWidget {
  const PropertyTypeCard({
    super.key,
    required this.propertyType,
  });

  final PropertyType propertyType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            propertyType.icon,
            color: Colors.blueGrey,
            size: 25.sp,
          ),
          HorizontalSpacer(width: 10.w),
          Text(
            propertyType.name,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
