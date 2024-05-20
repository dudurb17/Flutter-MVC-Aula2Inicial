import 'dart:convert';

import 'package:grimorio/models/google_book.dart';

class PersonalBook {
  int? id;
  String dayStarted;
  String dayFinished;
  String comments;

  GoogleBook googleBook = GoogleBook(
      authors: "a", description: "b", id: "c", thumbnailLink: "d", title: "e");

  PersonalBook(
      {required this.dayFinished,
      required this.dayStarted,
      required this.comments,
      required this.googleBook,
      this.id});

  PersonalBook.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        dayFinished = map["dayFinished"],
        dayStarted = map["dayStarted"],
        comments = map["comments"],
        googleBook = GoogleBook.fromJson(json.decode(map["googleBook"]));
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "googleBook": json.encode(googleBook.toMap()),
      "dayStarted": dayStarted,
      "dayFinished": dayFinished,
      "comments": comments
    };
  }
}
