import '../controller/schedule_tab_container_controller.dart';
import 'package:get/get.dart';

class ScheduleTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScheduleTabContainerController());
  }
}
