import 'controller/reset_password_verify_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordVerifyCodeScreen
    extends GetWidget<ResetPasswordVerifyCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 23,
            right: 23,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgReply,
                height: getSize(
                  40.00,
                ),
                width: getSize(
                  40.00,
                ),
                margin: getMargin(
                  left: 1,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 41,
                ),
                child: Text(
                  "msg_enter_verification".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRalewayBold24.copyWith(
                    height: getVerticalSize(
                      1.15,
                    ),
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  273.00,
                ),
                margin: getMargin(
                  left: 1,
                  top: 11,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_enter_code_that2".tr,
                        style: TextStyle(
                          color: ColorConstant.blueGray300,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            1.24,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_08528188".tr,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            1.28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 1,
                  top: 31,
                ),
                child: Obx(
                  () => PinCodeTextField(
                    appContext: context,
                    controller: controller.otpController.value,
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    autoDismissKeyboard: true,
                    enableActiveFill: true,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {},
                    textStyle: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        24,
                      ),
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      height: getVerticalSize(
                        1.15,
                      ),
                    ),
                    pinTheme: PinTheme(
                      fieldHeight: getHorizontalSize(
                        64.00,
                      ),
                      fieldWidth: getHorizontalSize(
                        64.00,
                      ),
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      selectedFillColor: ColorConstant.whiteA700,
                      activeFillColor: ColorConstant.whiteA700,
                      inactiveFillColor: ColorConstant.whiteA700,
                      inactiveColor: ColorConstant.blue600,
                      selectedColor: ColorConstant.blue600,
                      activeColor: ColorConstant.blue600,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: 56,
                width: 327,
                text: "lbl_verify".tr,
                margin: getMargin(
                  left: 1,
                  top: 40,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 26,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "msg_didn_t_receive_the".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRalewayRegular15.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.50,
                          ),
                          height: getVerticalSize(
                            1.28,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                        ),
                        child: Text(
                          "lbl_resend".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayMedium15.copyWith(
                            height: getVerticalSize(
                              1.28,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
