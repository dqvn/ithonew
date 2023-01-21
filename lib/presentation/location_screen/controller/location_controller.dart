import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/location_screen/models/location_model.dart';
import 'package:flutter/material.dart';

class LocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController group167Controller = TextEditingController();

  Rx<LocationModel> locationModelObj = LocationModel().obs;

  RxString radioGroup = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    group167Controller.dispose();
  }
}
