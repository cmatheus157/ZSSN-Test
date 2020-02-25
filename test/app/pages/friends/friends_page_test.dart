import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:zssn/app/pages/friends/friends_page.dart';

main() {
  testWidgets('FriendsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(FriendsPage(title: 'Friends')));
    final titleFinder = find.text('Friends');
    expect(titleFinder, findsOneWidget);
  });
}
