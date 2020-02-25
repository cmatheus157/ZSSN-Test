import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:zssn/app/pages/inventory/inventory_page.dart';

main() {
  testWidgets('InventoryPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(InventoryPage(title: 'Inventory')));
    final titleFinder = find.text('Inventory');
    expect(titleFinder, findsOneWidget);
  });
}
