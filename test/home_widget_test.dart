import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payflow/modules/home/home_page.dart';

void main() {
  group('Home Page', () {
    testWidgets('Home Page Test', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: HomePage(),
      ));

      expect(find.byType(Stack), findsOneWidget);
    });
  });
}
