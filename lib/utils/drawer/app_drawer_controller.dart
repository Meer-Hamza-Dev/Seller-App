import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:get/get.dart';

class AppDrawerController extends GetxController
    with GetTickerProviderStateMixin {
  late FancyDrawerController fancyDrawerController;

  @override
  void onInit() {
    super.onInit();
    fancyDrawerController = FancyDrawerController(vsync: this)
      ..addListener(() {
        update();
      });
  }

  @override
  void onClose() {
    fancyDrawerController.dispose();
    super.onClose();
  }

  void toggleDrawer() {
    fancyDrawerController.toggle();
  }
}