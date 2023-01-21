import 'controller/reset_password_phone_controller.dart';
import 'models/reset_password_phone_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/core/utils/validation_functions.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ResetPasswordPhonePage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ResetPasswordPhoneController controller =
      Get.put(ResetPasswordPhoneController(ResetPasswordPhoneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.transparent,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "lbl_085281882151".tr,
                          variant: TextFormFieldVariant.OutlineBlue60001,
                          padding: TextFormFieldPadding.PaddingT16,
                          fontStyle: TextFormFieldFontStyle.RalewayMedium16,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.phone,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCall)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56.00)),
                          validator: (value) {
                            if (!isValidPhone(value)) {
                              return "Please enter valid phone number";
                            }
                            return null;
                          }),
                      CustomButton(
                          height: 56,
                          width: 327,
                          text: "lbl_send_otp".tr,
                          margin: getMargin(top: 32),
                          onTap: onTapSendotp)
                    ])))));
  }

  onTapSendotp() {
    Get.toNamed(AppRoutes.resetPasswordVerifyCodeScreen);
  }
}
