// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class DashboardController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  int indexDashboard = 0;
  onChangedIndexDashboard(value) {
    indexDashboard = value;
    update();
  }
}
