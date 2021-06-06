class Repository {
  String name;
  String description;
  String fullName;
  String fork;
  String htmlUrl;
  String stargazersCount;
  String language;
  String watchers;
  String forks;
  String createdAt;
  String updatedAt;

  Repository({
    this.name,
    this.description,
    this.fullName,
    this.fork,
    this.htmlUrl,
    this.stargazersCount,
    this.language,
    this.watchers,
    this.forks,
    this.createdAt,
    this.updatedAt
  });

  factory Repository.fromJson(Map<String, dynamic> json) {
    return Repository(
      name: json['name'],
      description: json['description'],
      fullName: json['full_name'],
      fork: json['fork'],
      htmlUrl: json['html_url'],
      stargazersCount: json['stargazers_count'],
      language: json['language'],
      watchers: json['watchers'],
      forks: json['forks'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at']
    );
  }
}