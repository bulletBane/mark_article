import 'dart:convert';
import 'dart:io';

class Article {
  String id;
  String articleName;
  String articleDescription;
  String articleAuthor;
  var articleMark;
  Article(
      {this.id, this.articleName, this.articleDescription, this.articleAuthor});

  Article.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    articleName = json['articleName'];
    articleDescription = json['articleDescription'];
    articleAuthor = json['articleAuthor'];
    articleMark = base64Decode(json['articleMark']);
  }
}
