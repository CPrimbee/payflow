import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/shared/models/user_model.dart';

void main() {
  group('Home Page', () {
    testWidgets('Home Page Test', (WidgetTester tester) async {
      final UserModel user = UserModel(
          name: 'Cristiano',
          photoURL:
              'https://avatars.githubusercontent.com/u/40774358?s=60&v=4');

      await tester.pumpWidget(MaterialApp(
        home: HomePage(
          user: user,
        ),
      ));

      expect(find.byType(Stack), findsOneWidget);
    });
  });
}
