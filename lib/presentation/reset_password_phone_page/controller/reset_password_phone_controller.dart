import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/reset_password_phone_page/models/reset_password_phone_model.dart';
import 'package:flutter/material.dart';

class ResetPasswordPhoneController extends GetxController {
  ResetPasswordPhoneController(this.resetPasswordPhoneModelObj);

  TextEditingController inputController = TextEditingController();

  Rx<ResetPasswordPhoneModel> resetPasswordPhoneModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }
}
