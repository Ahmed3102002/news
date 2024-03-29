class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final String urlSource;

  ArticleModel({
    required this.image,
    required this.title,
    required this.description,
    required this.urlSource,
  });

  factory ArticleModel.fromJson(article) {
    return ArticleModel(
      image: article['urlToImage'],
      title: article['title'],
      description: article['description'],
      urlSource: article['url'],
    );
  }
}
