import 'package:get/get.dart';

class CouponsController extends GetxController{
  var selectedValueType = 'coupons'.obs;
  updateselectedValyeType(Val){
    selectedValueType.value = Val;
    update();
  }
}