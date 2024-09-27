import 'package:get/get.dart';

class ProductViewController extends GetxController {
  var selectedType = 'Offer'.obs;

  updateSelectedType(Value) {
    selectedType.value = Value;
    update();
  }
}
