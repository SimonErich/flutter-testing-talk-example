import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tddtest/main.dart';

main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Search Flow Integration Test', () {
    testWidgets('search for a term and then see results',
        (tester) async {
      await tester.pumpWidget(const MyApp());

      // ##### ARRANGE
      const searchTerm = 'berry';

      // ##### ASSERT
      // if we don't enter a search term, we should not see the list yet
      expect(find.byType(ListTile), findsNothing);

      // ##### ACT
      await tester.enterText(find.byKey(const Key('search-field')), searchTerm);
      await tester.pumpAndSettle(const Duration(
          seconds:
              2)); // the delay here is just for demonstration purposes, so we can see the effects

      // ##### ASSERT
      expect(find.byType(ListTile), findsWidgets);

      final firstListTileItem = find.byType(ListTile).first;

      // make sure the first item is visible
      await tester.ensureVisible(firstListTileItem);

      // ##### ACT
      await tester.tap(firstListTileItem);

      // again, just a delay for demonstration purposes
      await Future.delayed(const Duration(seconds: 6));
    });
  });
}
