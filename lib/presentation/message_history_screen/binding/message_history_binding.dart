import '../controller/message_history_controller.dart';
import 'package:get/get.dart';

class MessageHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageHistoryController());
  }
}
