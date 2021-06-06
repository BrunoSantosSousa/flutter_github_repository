import 'package:flutter/material.dart';
import 'package:flutter_github_repository/views/SearchResults.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  void _handleSearchButtonClick(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchResults()));
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
                      )
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
