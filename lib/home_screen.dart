import 'package:aqar/translation/translation.dart';
import 'package:aqar/widgets/bottom_navigation.dart';
import 'package:aqar/widgets/home/home_header.dart';
import 'package:aqar/widgets/home/property_screen.dart';
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

class Property {
  final double price;
  final int bedrooms;
  final int bathrooms;
  final int sqauremeters;
  final int halls;
  final String imageUrl;
  final String areaName;

  Property({
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.sqauremeters,
    required this.halls,
    required this.imageUrl,
    this.areaName = "Giza, Egypt",
  });
}

const String placeholderImage =
    "https://th.bing.com/th/id/R.a1d4a6f8ba9cf40bbe69c6e47546e8a3?rik=dgUZMgnDeoL7Dw&riu=http%3a%2f%2fwww.luxxu.net%2fblog%2fwp-content%2fuploads%2f2017%2f02%2f20-Incredible-Modern-Houses-Around-the-United-States-5.jpg&ehk=jltOlopAEXlYw25Qjcb6BhHSadJcIyJ863PI4ffrO70%3d&risl=1&pid=ImgRaw&r=0";

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

  final List<Property> properties = [
    Property(
        price: 65000,
        bedrooms: 3,
        bathrooms: 2,
        sqauremeters: 155,
        halls: 1,
        imageUrl: placeholderImage),
    Property(
        price: 1700,
        bedrooms: 2,
        bathrooms: 2,
        sqauremeters: 140,
        halls: 1,
        imageUrl: placeholderImage),
    Property(
        price: 17000,
        bedrooms: 2,
        bathrooms: 2,
        sqauremeters: 145,
        halls: 1,
        imageUrl: placeholderImage),
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
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.only(bottom: 20.h),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Get.to(() => PropertyScreen(
                                property: properties[index],
                              ));
                        },
                        child: PropertyCard(
                          property: properties[index],
                        ),
                      ),
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.blueGrey.shade300,
                        height: 20.h,
                      ),
                      itemCount: properties.length,
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

class PropertyCard extends StatelessWidget {
  const PropertyCard({
    super.key,
    required this.property,
  });

  final Property property;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      // padding: EdgeInsets.only(bottom: 10.w),
      margin: EdgeInsets.only(top: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.network(
                property.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          VerticalSpacer(height: 10.h),
          Text(
            "\$${property.price}",
            style: TextStyle(
              color: Colors.blueGrey.shade800,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          VerticalSpacer(height: 2.h),
          Text(
            property.areaName,
            style: TextStyle(
              color: Colors.blueGrey.shade800,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          VerticalSpacer(height: 5.h),
          Row(
            children: [
              Icon(
                Icons.king_bed_rounded,
                color: Colors.blueGrey.shade400,
                size: 20.sp,
              ),
              HorizontalSpacer(width: 5.w),
              Text(
                "${property.bedrooms}",
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontSize: 14.sp,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.bathtub_rounded,
                color: Colors.blueGrey.shade400,
                size: 20.sp,
              ),
              HorizontalSpacer(width: 5.w),
              Text(
                "${property.bathrooms} ",
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontSize: 14.sp,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.aspect_ratio_rounded,
                color: Colors.blueGrey.shade400,
                size: 20.sp,
              ),
              HorizontalSpacer(width: 5.w),
              Text(
                "${property.sqauremeters} mm",
                style: TextStyle(
                  color: Colors.blueGrey.shade400,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
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
