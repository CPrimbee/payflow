import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payflow/modules/login/login_page.dart';

void main() {
  group('Login Page', () {
    testWidgets('Login Page Test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LoginPage(),
      ));

      expect(find.byType(Stack), findsNWidgets(2));
    });

    testWidgets('Login Google button exists test', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: LoginPage(),
      ));

      final finderGoogleButton = find.text("Entrar com Google");
      expect(finderGoogleButton, findsOneWidget);
      await tester.tap(finderGoogleButton);
    });
  });
}
