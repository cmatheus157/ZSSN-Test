import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:zssn/app/pages/friends/addfriend/addfriend_page.dart';

main() {
  testWidgets('AddfriendPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(AddfriendPage(title: 'Addfriend')));
    final titleFinder = find.text('Addfriend');
    expect(titleFinder, findsOneWidget);
  });
}
