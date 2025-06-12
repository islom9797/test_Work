import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/app_assets.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  static const String id = "/SplashPage";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Container(
              color: Color(0xFFFFFBEB),
              width: Get.width,
              height: Get.height,
              child: Image.asset(AppAssets.images.splash,fit: BoxFit.fitWidth,width: Get.width,));
        },
      ),
    );
  }
}
