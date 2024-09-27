import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seller_app/app/practice/controller.dart';
import 'package:seller_app/utils/app_text/app_text.dart';

class Practice extends StatelessWidget {
  Practice({super.key});
  final PracticeController controller = Get.put(PracticeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gandu"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(16, 40, 16, 40),
        child: Obx(() {
          return Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () =>
                        controller.updateUpperSelectedValue('upperCategory'),        
                    child: Container(
                      width: 200,
                      height: 80,
                      color: Colors.black,
                      child: Center(
                        child: AppText(
                          title: 'Category',
                          fontWeight: FontWeight.w500,
                          size: 16,
                          color: controller.upperSelectedValue.value ==
                                  'upperCategory'
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () =>
                        controller.updateUpperSelectedValue('upperDirectory'),
                    child: Container(
                      width: 200,
                      height: 80,
                      color: Colors.black,
                      child: Center(
                        child: AppText(
                          title: 'Directory',
                          fontWeight: FontWeight.w500,
                          size: 16,
                          color: controller.upperSelectedValue.value ==
                                  'upperDirectory'
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  GestureDetector(
                    onTap: () =>
                        controller.updateLowerSelectedValue('lowerCategory'),
                    child: Container(
                      width: 200,
                      height: 80,
                      color: Colors.black,
                      child: Center(
                        child: AppText(
                          title: 'Category',
                          fontWeight: FontWeight.w500,
                          size: 16,
                          color: controller.lowerSelectedValue.value ==
                                  'lowerCategory'
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () =>
                        controller.updateLowerSelectedValue('lowerDirectory'),
                    child: Container(
                      width: 200,
                      height: 80,
                      color: Colors.black,
                      child: Center(
                        child: AppText(
                          title: 'Directory',
                          fontWeight: FontWeight.w500,
                          size: 16,
                          color: controller.lowerSelectedValue.value ==
                                  'lowerDirectory'
                              ? Colors.red
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        }),
      ),
    );
  }
}
