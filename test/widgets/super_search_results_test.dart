import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tddtest/widgets/super_search_results.dart';

void main() {
  testWidgets('shows instructions if no query is given', (tester) async {
    // ARRANGE
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SuperSearchResults(query: ''),
        ),
      ),
    );

    // ACT

    // ASSERT
    expect(find.text('Please enter a search term'), findsOneWidget);
  });

  testWidgets('shows search results if query is given', (tester) async {
    // ARRANGE
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SuperSearchResults(
            query: 'e',
          ),
        ),
      ),
    );

    // ACT

    // ASSERT
    expect(find.byType(ListTile), findsWidgets);
  });
}
