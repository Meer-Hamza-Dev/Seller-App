import 'package:get/get.dart';

class VisitingCardController extends GetxController {
  var selectedValuetype = 'mycards'.obs;
  updateselectedtype(Val) {
    selectedValuetype.value = Val;
    update();
  }

  RxInt currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }
}