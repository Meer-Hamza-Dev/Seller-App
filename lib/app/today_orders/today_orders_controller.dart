import 'package:get/get.dart';

class TodayOrdersController extends GetxController {
  var selectedType = 'newOrder'.obs;

   updateSelectedType(Value) {
    selectedType.value = Value;
    update();
  }
}
