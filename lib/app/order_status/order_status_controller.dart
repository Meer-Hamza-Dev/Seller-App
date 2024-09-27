import 'package:get/get.dart';

class OrderStatusController extends GetxController {
  var selectedType = 'Preparing'.obs;

  updateSelectedType(Value) {
    selectedType.value = Value;
    update();
  }
}
