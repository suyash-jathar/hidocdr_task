class News {
  int? id;
  String? title;
  String? url;
  String? urlToImage;
  String? description;
  String? speciality;
  String? newsUniqueId;
  int? trendingLatest;
  String? publishedAt;

  News(
      {this.id,
      this.title,
      this.url,
      this.urlToImage,
      this.description,
      this.speciality,
      this.newsUniqueId,
      this.trendingLatest,
      this.publishedAt});

  News.fromJson(Map<String, dynamic> json) {
    
    id = json['id'];
    title = json['title'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    description = json['description'];
    speciality = json['speciality'];
    newsUniqueId = json['newsUniqueId'];
    trendingLatest = json['trendingLatest'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['description'] = description;
    data['speciality'] = speciality;
    data['newsUniqueId'] = newsUniqueId;
    data['trendingLatest'] = trendingLatest;
    data['publishedAt'] = publishedAt;
    return data;
  }
}