final allItems = [
  'Banana',
  'Strawberry',
  'Mango',
  'Raspberry',
];

/// A method to get results filtered by [query]
List<String> getSearchResults(String query) {
  return allItems
      .where(
        (item) => item.contains(query),
      )
      .toList();
}
