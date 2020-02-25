import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:zssn/app/pages/inventory/inventory_controller.dart';
import 'package:zssn/app/app_module.dart';

void main() {
  initModule(AppModule());
  InventoryController inventory;

  setUp(() {
    inventory = AppModule.to.get<InventoryController>();
  });

  group('InventoryController Test', () {
    test("First Test", () {
      expect(inventory, isInstanceOf<InventoryController>());
    });

    test("Set Value", () {
      expect(inventory.value, equals(0));
      inventory.increment();
      expect(inventory.value, equals(1));
    });
  });
}
