import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_repository/models/Repository.dart';

class ResultDetailArguments {
  final Repository repository;

  ResultDetailArguments(this.repository);
}

class ResultDetail extends StatelessWidget {
  static const routeName = "/result-detail";

  @override
  Widget build(BuildContext context) {

    final String title = 'Detalhes do repositório: ';

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('Detalhar da result')
      )
    );
  }
}
