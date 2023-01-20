import 'package:get/get.dart';
import 'schedule_item_model.dart';

class ScheduleModel {
  RxList<ScheduleItemModel> scheduleItemList =
      RxList.filled(2, ScheduleItemModel());
}
