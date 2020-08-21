import 'dart:convert';

class Category {
  final String title, author, dateCreated, link, content;

  Category(
      {this.title, this.author, this.dateCreated, this.link, this.content});

  factory Category.fromJson(json) {
    return new Category(
      title: json['title'] as String,
      author: json['author'] as String,
      link: json['link-content'] as String,
      content: json['content'] as String,
      dateCreated: json['date-created'] as String,
    );
  }
}
