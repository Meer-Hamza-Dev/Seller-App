// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

Future<void> selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
  }