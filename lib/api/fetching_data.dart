import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/exploreArticle.dart';
import '../models/news.dart';
import '../models/trandingArticle.dart';
import '../models/trandingBulletin.dart';

class ApiFetcher {
  static const String _baseUrl = 'http://devapi.hidoc.co:8080/HidocWebApp/api';

  static const Map<String, String> _body = {
    'sId': '500',
    'uuId': '',
    'userId': '423914',
  };

  static Future<List<News>> fetchArticles() async {
    final response = await _fetchData('getArticlesByUid');
    final jsonData = json.decode(response.body);
    final newsData = jsonData['data']['news'];
    return newsData.map<News>((item) => News(
      id: item['id'],
      title: item['title'],
      url: item['url'],
      urlToImage: item['urlToImage'],
      description: item['description'],
      publishedAt: item['publishedAt'],
    )).toList();
  }

  static Future<List<TrandingBulletin>> fetchTrandingBulletin() async {
    final response = await _fetchData('getArticlesByUid');
    final jsonData = json.decode(response.body);
    final newsData = jsonData['data']['trandingBulletin'];
    return newsData.map<TrandingBulletin>((item) => TrandingBulletin(
      id: item['id'],
      articleTitle: item['articleTitle'],
      articleImg: item['articleImg'],
      articleDescription: item['articleDescription'],
    )).toList();
  }

  static Future<List<TrandingArticle>> fetchLatestArticles() async {
    final response = await _fetchData('getArticlesByUid');
    final jsonData = json.decode(response.body);
    final newsData = jsonData['data']['trandingArticle'];
    return newsData.map<TrandingArticle>((item) => TrandingArticle(
      id: item['id'],
      articleTitle: item['articleTitle'],
      articleImg: item['articleImg'],
      articleDescription: item['articleDescription'],
      createdAt: item['createdAt'],
    )).toList();
  }

  static Future<List<ExploreArticle>> fetchexploreArticles() async {
    final response = await _fetchData('getArticlesByUid');
    final jsonData = json.decode(response.body);
    final newsData = jsonData['data']['exploreArticle'];
    return newsData.map<ExploreArticle>((item) => ExploreArticle(
      articleTitle: item['articleTitle'],
      articleImg: item['articleImg'],
      articleDescription: item['articleDescription'],
    )).toList();
  }
  static Future<http.Response> _fetchData(String endpoint) async {
    final apiUrl = '$_baseUrl/$endpoint';
    final response = await http.post(Uri.parse(apiUrl), body: _body);
    return response.statusCode == 200 ? response : throw Exception('Failed to fetch data');
  }
}
