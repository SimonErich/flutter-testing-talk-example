import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tddtest/main.dart';

main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  group('Test searching for a term and then clicking opening the result', () {

    testWidgets('search for a term and then click on the result',
        (tester) async {
      await tester.pumpWidget(const MyApp());

      // ARRANGE
      const searchTerm = 'berry';

      // ACT
      await tester.enterText(find.byKey(const Key('search-field')), searchTerm);
      await tester.pumpAndSettle(const Duration(seconds: 2)); // the delay here is just for demonstration purposes, so we can see the effects

      // ASSERT
      expect(find.byType(ListTile), findsWidgets);

      // ACT
      await tester.tap(find.byType(ListTile).first);

      await Future.delayed(const Duration(seconds: 6));
    });
  });
}
