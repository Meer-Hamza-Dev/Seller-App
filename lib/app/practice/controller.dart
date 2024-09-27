import 'package:get/get.dart';

class PracticeController extends GetxController {
  var upperSelectedValue = 'upperCategory'.obs;

  void updateUpperSelectedValue(String val) {
    upperSelectedValue.value = val;
  }

  var lowerSelectedValue = 'lowerCategory'.obs;

  void updateLowerSelectedValue(String val) {
    lowerSelectedValue.value = val;
  }
}
