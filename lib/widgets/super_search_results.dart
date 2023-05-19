import 'package:flutter/material.dart';
import 'package:tddtest/services/get_search_results.dart';

/// Displays search results for [query]
class SuperSearchResults extends StatelessWidget {
  const SuperSearchResults({
    Key? key,
    required this.query,
  }) : super(key: key);

  final String query;

  @override
  Widget build(BuildContext context) {
    // if no query is given, show instructions
    if (query.isEmpty) {
      return const Center(child: Text('Please enter a search term'));
    }

    // get results for the given query
    final results = getSearchResults(query);

    // otherwise show a list of all items that match the query
    return ListView(
      children: results
          .map<Widget>(
            (item) =>ListTile(title: Text(item)),
          )
          .toList(),
    );
  }
}
