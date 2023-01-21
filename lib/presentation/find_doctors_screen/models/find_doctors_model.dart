import 'package:get/get.dart';
import 'find_doctors_item_model.dart';
import 'doctors_item_model.dart';

class FindDoctorsModel {
  RxList<FindDoctorsItemModel> findDoctorsItemList =
      RxList.filled(7, FindDoctorsItemModel());

  RxList<DoctorsItemModel> doctorsItemList =
      RxList.filled(4, DoctorsItemModel());
}
