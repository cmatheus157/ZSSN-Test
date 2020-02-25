import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:zssn/app/pages/inventory/inventory_widget.dart';

main() {
  testWidgets('InventoryWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(InventoryWidget()));
    final textFinder = find.text('Inventory');
    expect(textFinder, findsOneWidget);
  });
}
