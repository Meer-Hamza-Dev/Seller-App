import 'package:get/get.dart';

class CateringServiceController extends GetxController {
  var selectValuetype = 'Allsellers'.obs;
  updateselectValue(Val) {
    selectValuetype.value = Val;
    update();
  }
}