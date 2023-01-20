import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.onboardingOneScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
