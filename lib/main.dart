import 'package:flutter/material.dart';
import 'package:flutter_github_repository/views/ResultDetail.dart';
import 'package:flutter_github_repository/views/Search.dart';
import 'package:flutter_github_repository/views/SearchResults.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github Repositories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Search(),
      routes: {
        SearchResults.routeName: (context) => SearchResults(),
        ResultDetail.routeName: (context) => ResultDetail()
      },
    );
  }
}
