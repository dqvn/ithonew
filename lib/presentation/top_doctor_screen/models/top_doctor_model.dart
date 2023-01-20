import 'package:get/get.dart';
import 'top_doctor_item_model.dart';

class TopDoctorModel {
  RxList<TopDoctorItemModel> topDoctorItemList =
      RxList.filled(5, TopDoctorItemModel());
}
