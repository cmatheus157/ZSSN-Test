import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:zssn/app/pages/friends/addfriend/addfriend_controller.dart';
import 'package:zssn/app/app_module.dart';

void main() {
  initModule(AppModule());
  AddfriendController addfriend;

  setUp(() {
    addfriend = AppModule.to.get<AddfriendController>();
  });

  group('AddfriendController Test', () {
    test("First Test", () {
      expect(addfriend, isInstanceOf<AddfriendController>());
    });

    test("Set Value", () {
      expect(addfriend.value, equals(0));
      addfriend.increment();
      expect(addfriend.value, equals(1));
    });
  });
}
