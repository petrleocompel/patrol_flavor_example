import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_flavor_example/main_free.dart';

void main() {
  patrolTest(
    'pump and wait',
    nativeAutomation: true,
    ($) async {
      // Replace later with your app's main widget
      await $.pumpWidgetAndSettle(const MyApp());

      expect($('FREE'), findsOneWidget);
      sleep(Duration(seconds: 5));
      await $.native.pressHome();
    },
  );
}
