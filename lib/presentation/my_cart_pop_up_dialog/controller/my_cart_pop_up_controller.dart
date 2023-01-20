import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/my_cart_pop_up_dialog/models/my_cart_pop_up_model.dart';

class MyCartPopUpController extends GetxController {
  Rx<MyCartPopUpModel> myCartPopUpModelObj = MyCartPopUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
