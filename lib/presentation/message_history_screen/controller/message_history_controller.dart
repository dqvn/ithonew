import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/presentation/message_history_screen/models/message_history_model.dart';
import 'package:itho_new/widgets/custom_bottom_bar.dart';

class MessageHistoryController extends GetxController {
  Rx<MessageHistoryModel> messageHistoryModelObj = MessageHistoryModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
