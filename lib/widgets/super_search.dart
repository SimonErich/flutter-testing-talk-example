import 'package:flutter/material.dart';
import 'package:tddtest/widgets/super_search_results.dart';

/// Provides the main entry point for our search feature.
class SuperSearch extends StatefulWidget {
  const SuperSearch({Key? key}) : super(key: key);

  @override
  State<SuperSearch> createState() => SuperSearchState();
}

class SuperSearchState extends State<SuperSearch> {
  /// The search query, the user is currently typing.
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search field
        TextField(
          key: const Key('search-field'),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Search',
          ),
          onChanged: (newQuery) {
            setState(() {
              query = newQuery;
            });
          },
        ),

        // Results
        Expanded(child: SuperSearchResults(query: query)),
      ],
    );
  }
}
