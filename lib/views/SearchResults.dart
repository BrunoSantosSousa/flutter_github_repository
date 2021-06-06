import 'package:flutter/material.dart';


class SearchResultsArguments {
  final String search;

  SearchResultsArguments(this.search);
}

class SearchResults extends StatefulWidget {
  static const routeName = "/search-results";

  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as SearchResultsArguments;
    final String title = 'Resultados da busca por: ${args.search}';

    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Página de resultados")
          ],
        )
      )
    );
  }
}
