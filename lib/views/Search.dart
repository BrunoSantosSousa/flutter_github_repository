import 'package:flutter/material.dart';
import 'package:flutter_github_repository/views/SearchResults.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final myController = TextEditingController();

  void _handleSearchButtonClick(BuildContext context) {
    Navigator.pushNamed(context, SearchResults.routeName, arguments: SearchResultsArguments(myController.text));
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nome de um usuário do github'
                      ),
                      controller: myController,
                  )
                ]
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _handleSearchButtonClick(context),
        tooltip: 'Pesquisar',
        child: Icon(Icons.search)
      ),
    );
  }
}
