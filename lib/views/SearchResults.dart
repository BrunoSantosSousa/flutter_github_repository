import 'package:flutter/material.dart';

class SearchResults extends StatefulWidget {

  final String title = 'Resultados da busca por: ID';

  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
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
