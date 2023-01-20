import 'controller/reset_password_email_controller.dart';
import 'models/reset_password_email_model.dart';
import 'package:flutter/material.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/core/utils/validation_functions.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordEmailPage extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ResetPasswordEmailController controller =
      Get.put(ResetPasswordEmailController(ResetPasswordEmailModel().obs));

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
                  controller: controller.emailController,
                  hintText: "msg_jamesschleifer_gmail_com".tr,
                  variant: TextFormFieldVariant.OutlineBlue600,
                  padding: TextFormFieldPadding.PaddingT17,
                  fontStyle: TextFormFieldFontStyle.RalewayMedium16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                    margin: getMargin(
                      left: 24,
                      top: 16,
                      right: 14,
                      bottom: 16,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkBlue60024x24,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56.00,
                    ),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 22,
                      top: 20,
                      right: 24,
                      bottom: 20,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgCheckmarkTeal400,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      56.00,
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "Please enter valid email";
                    }
                    return null;
                  },
                ),
                CustomButton(
                  height: 56,
                  width: 327,
                  text: "lbl_send_otp".tr,
                  margin: getMargin(
                    top: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
