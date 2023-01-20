import 'controller/location_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/core/utils/validation_functions.dart';
import 'package:itho_new/widgets/app_bar/appbar_image.dart';
import 'package:itho_new/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:itho_new/widgets/app_bar/custom_app_bar.dart';
import 'package:itho_new/widgets/custom_button.dart';
import 'package:itho_new/widgets/custom_radio_button.dart';
import 'package:itho_new/widgets/custom_text_form_field.dart';

class LocationScreen extends GetWidget<LocationController> {
  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  child: GoogleMap(
                    //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        37.43296265331129,
                        -122.08832357078792,
                      ),
                      zoom: 14.4746,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      googleMapController.complete(controller);
                    },
                    zoomControlsEnabled: false,
                    zoomGesturesEnabled: false,
                    myLocationButtonEnabled: false,
                    myLocationEnabled: false,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup1,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomAppBar(
                          height: getVerticalSize(
                            56.00,
                          ),
                          leadingWidth: 64,
                          leading: AppbarImage(
                            height: getSize(
                              40.00,
                            ),
                            width: getSize(
                              40.00,
                            ),
                            svgPath: ImageConstant.imgReply,
                            margin: getMargin(
                              left: 24,
                            ),
                          ),
                          centerTitle: true,
                          title: AppbarSubtitle2(
                            text: "lbl_ambulance".tr,
                          ),
                          styleType: Style.bgShadowBlack90019,
                        ),
                        CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "msg_search_location".tr,
                          margin: getMargin(
                            top: 43,
                          ),
                          variant: TextFormFieldVariant.OutlineGray200_1,
                          padding: TextFormFieldPadding.PaddingT11,
                          fontStyle: TextFormFieldFontStyle.RalewayRegular12,
                          textInputType: TextInputType.number,
                          prefix: Container(
                            margin: getMargin(
                              left: 16,
                              top: 11,
                              right: 8,
                              bottom: 11,
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgQrcode,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              40.00,
                            ),
                          ),
                          validator: (value) {
                            if (!isNumeric(value)) {
                              return "Please enter valid number";
                            }
                            return null;
                          },
                        ),
                        Spacer(),
                        Container(
                          width: getHorizontalSize(
                            355.00,
                          ),
                          margin: getMargin(
                            left: 10,
                            right: 10,
                            bottom: 27,
                          ),
                          padding: getPadding(
                            left: 10,
                            top: 14,
                            right: 10,
                            bottom: 14,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                width: 335,
                                focusNode: FocusNode(),
                                controller: controller.groupFourteenController,
                                hintText: "msg_confirm_your_address".tr,
                                variant:
                                    TextFormFieldVariant.UnderLineBluegray50,
                                fontStyle:
                                    TextFormFieldFontStyle.RalewaySemiBold14,
                                textInputAction: TextInputAction.done,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: CustomRadioButton(
                                  text: "msg_2640_cabin_creek".tr,
                                  value: "msg_2640_cabin_creek".tr,
                                  groupValue: controller.radioGroup.value,
                                  margin: getMargin(
                                    top: 15,
                                  ),
                                  onChange: (value) {
                                    controller.radioGroup.value = value;
                                  },
                                ),
                              ),
                              CustomButton(
                                height: 50,
                                width: 327,
                                text: "msg_confirm_location".tr,
                                margin: getMargin(
                                  top: 13,
                                ),
                                fontStyle: ButtonFontStyle.RalewaySemiBold14,
                              ),
                            ],
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
      ),
    );
  }
}
