import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_github_repository/models/Repository.dart';
import 'package:flutter_github_repository/services/RepositoryService.dart';
import 'package:flutter_github_repository/views/ResultDetail.dart';

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
  late Future<List<Repository>> repositories;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SearchResultsArguments;
    final String title = 'Resultados da busca por: ${args.search}';

    var service = new RepositoryService();
    repositories = service.fetchRepositories(args.search);

    _buildError(String errorMessage) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(errorMessage)],
      );
    }

    _buildResultList(List<Repository> results) {
      return ListView.builder(
          itemCount: results.length,
          itemBuilder: (BuildContext ctx, int index) {
            return ListTile(
              leading: Icon(Icons.arrow_right),
              title: Text(results[index].name),
              subtitle: Text(results[index].description),
              onTap: () {
                var arguments = ResultDetailArguments(results[index]);
                Navigator.pushNamed(ctx, ResultDetail.routeName,
                    arguments: arguments);
              },
            );
          });
    }

    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Center(
          child: FutureBuilder(
              future: repositories,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return _buildResultList(snapshot.data! as List<Repository>);
                  return Text(jsonEncode(snapshot.data!));
                } else if (snapshot.hasError) {
                  return _buildError("${snapshot.error}");
                }

                return CircularProgressIndicator();
              }),
        ));
  }
}
