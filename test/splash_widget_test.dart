import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payflow/modules/splash/splash_page.dart';

void main() {
  group('Splash Page', () {
    testWidgets('Splash Page Test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
        home: SplashPage(),
      ));

      expect(find.byType(Stack), findsNWidgets(2));
    });
  });
}
