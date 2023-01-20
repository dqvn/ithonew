import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/profile_screen/models/profile_model.dart';
import 'package:itho_new/widgets/custom_bottom_bar.dart';

class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
