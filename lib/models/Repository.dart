class Repository {
  String name;
  String description;
  String fullName;
  bool fork;
  String htmlUrl;
  int stargazersCount;
  String language;
  int watchers;
  int forks;
  String createdAt;
  String updatedAt;

  Repository({
    required this.name,
    required this.description,
    required this.fullName,
    required this.fork,
    required this.htmlUrl,
    required this.stargazersCount,
    required this.language,
    required this.watchers,
    required this.forks,
    required this.createdAt,
    required this.updatedAt
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      name: json['name'] ?? 'Não informado',
      description: json['description'] ?? 'Não informado',
      fullName: json['full_name'] ?? 'Não informado',
      fork: json['fork'] ?? false,
      htmlUrl: json['html_url'] ?? 'Não informado',
      stargazersCount: json['stargazers_count'] ?? 'Não informado',
      language: json['language'] ?? 'Não informado',
      watchers: json['watchers'] ?? 'Não informado',
      forks: json['forks'] ?? 'Não informado',
      createdAt: json['created_at'] ?? 'Não informado',
      updatedAt: json['updated_at'] ?? 'Não informado'
    );
  }

}