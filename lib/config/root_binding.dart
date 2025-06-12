
import 'package:get/get.dart';
import '../presentation/pages/splash/splash_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {

    // controllers
    Get.lazyPut(() => SplashController(), fenix: true);


  }
}
