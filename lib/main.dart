import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:aqar/home_screen.dart';
import 'package:aqar/store_binding.dart';
import 'package:aqar/theme.dart';
import 'package:aqar/translation/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: ((context, child) => GetMaterialApp(
            title: 'Flutter Demo',
            translations: AppTranslations(),
            locale: const Locale('en', 'US'),
            fallbackLocale: const Locale('en', 'US'),
            debugShowCheckedModeBanner: false,
            theme: theme,
            initialBinding: StoreBinding(),
            home: FlutterSplashScreen.fadeIn(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.lightBlue,
                  Colors.blue,
                ],
              ),
              childWidget: const Icon(
                Iconsax.buildings_2,
                size: 100,
                color: Colors.white,
              ),
              duration: const Duration(milliseconds: 3000),
              animationDuration: const Duration(milliseconds: 2000),
              nextScreen: HomeScreen(),
            ),
          )),
    );
  }
}
