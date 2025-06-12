import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'config/root_binding.dart';
import 'presentation/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 756),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialBinding: RootBinding(),
            theme: ThemeData(scaffoldBackgroundColor: Color(0xffFFFFFF)),
            locale: Locale('en', 'US'),
            // translations will be displayed in that locale
            fallbackLocale:  Locale('en', 'US'),
            localizationsDelegates: [
            ],
            debugShowCheckedModeBanner: false,
            home: SplashPage(),
          );
        });
  }
}

