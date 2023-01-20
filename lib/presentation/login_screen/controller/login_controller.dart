import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController buttonwithGoogleController = TextEditingController();

  TextEditingController buttonwithFacebookController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    buttonwithGoogleController.dispose();
    buttonwithFacebookController.dispose();
  }
}
