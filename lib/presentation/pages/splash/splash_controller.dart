

import 'package:get/get.dart';
import 'package:work/presentation/pages/home/home_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    goToHome();
    // await checkIfLoggedIn();
  }

  goToHome(){
    Future.delayed(const Duration(milliseconds: 1400),
            () async {
          Get.off(HomePage());
        });
  }
  }
