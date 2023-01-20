import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/schedule_tab_container_screen/models/schedule_tab_container_model.dart';
import 'package:itho_new/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ScheduleTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ScheduleTabContainerModel> scheduleTabContainerModelObj =
      ScheduleTabContainerModel().obs;

  late TabController group125Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
