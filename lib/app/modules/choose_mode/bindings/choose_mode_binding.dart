import 'package:get/get.dart';

import '../controllers/choose_mode_controller.dart';

class ChooseModeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseModeController>(
      () => ChooseModeController(),
    );
  }
}
