import 'package:get/get.dart';

class VideoController extends GetxController {
  var selectedType = 'AllVideo'.obs;

  updateSelectedType(Value) {
    selectedType.value = Value;
    update();
  }
}
