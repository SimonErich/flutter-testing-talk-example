import 'package:flutter_test/flutter_test.dart';
import 'package:tddtest/services/get_search_results.dart';

void main() {
  test('Only returns results matching our searchQuery', () async {
    // ARRANGE
    const searchQuery = 'berry';

    // ACT
    final results = getSearchResults(searchQuery);

    // ASSERT
    expect(results, ['Strawberry', 'Raspberry']);
  });
}
