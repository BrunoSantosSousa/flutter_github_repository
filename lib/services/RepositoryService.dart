import 'dart:convert';

import 'package:flutter_github_repository/models/Repository.dart';
import 'package:http/http.dart' as http;

class RepositoryService {
  final repositoryUrl =
      "https://api.github.com/users/{user}/repos?page=1&per_page=8";

  Future<List<Repository>> fetchRepositories(String search) async {
    final url = repositoryUrl.replaceFirst('{user}', search);
    final response = await http.get(Uri. parse(url));

    if (response.statusCode == 200) {
      List<dynamic> results = jsonDecode(response.body);

      return List<Repository>.generate(
          results.length, (index) => Repository.fromJson(results[index]));
    }

    throw Exception("Falha ao carregar repositórios");
  }
}
