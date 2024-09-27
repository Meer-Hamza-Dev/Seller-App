import 'package:get/get.dart';

class TiffinProviderController extends GetxController{
  var selectValuetype = 'Allsellers'.obs;
  updateselectValue(Val){
    selectValuetype.value = Val;
    update();
  }
}