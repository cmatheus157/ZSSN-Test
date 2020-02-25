import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:zssn/app/pages/friends/friends_controller.dart';
import 'package:zssn/app/app_module.dart';

void main() {
  initModule(AppModule());
  FriendsController friends;

  setUp(() {
    friends = AppModule.to.get<FriendsController>();
  });

  group('FriendsController Test', () {
    test("First Test", () {
      expect(friends, isInstanceOf<FriendsController>());
    });

    test("Set Value", () {
      expect(friends.value, equals(0));
      friends.increment();
      expect(friends.value, equals(1));
    });
  });
}
