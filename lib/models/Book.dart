// To parse this JSON data, do
//
//     final book = bookFromJson(jsonString);

import 'dart:convert';

List<Book> bookFromJson(String str) => List<Book>.from(json.decode(str).map((x) => Book.fromJson(x)));

String bookToJson(List<Book> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Book {
    Book({
        this.authorName,
        this.bookCategory,
        this.bookCategoryId,
        this.bookStatus,
        this.createdBy,
        this.createdTime,
        this.id,
        this.imageUrl,
        this.isbn,
        this.price,
        this.publicationDate,
        this.synopsis,
        this.title,
        this.updatedBy,
        this.updatedTime,
    });

    String authorName;
    BookCategory bookCategory;
    int bookCategoryId;
    String bookStatus;
    String createdBy;
    String createdTime;
    int id;
    String imageUrl;
    String isbn;
    int price;
    String publicationDate;
    String synopsis;
    String title;
    dynamic updatedBy;
    dynamic updatedTime;

    factory Book.fromJson(Map<String, dynamic> json) => Book(
        authorName: json["authorName"] == null ? null : json["authorName"],
        bookCategory: json["bookCategory"] == null ? null : BookCategory.fromJson(json["bookCategory"]),
        bookCategoryId: json["bookCategoryId"] == null ? null : json["bookCategoryId"],
        bookStatus: json["bookStatus"] == null ? null : json["bookStatus"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        id: json["id"] == null ? null : json["id"],
        imageUrl: json["imageUrl"] == null ? null : json["imageUrl"],
        isbn: json["isbn"] == null ? null : json["isbn"],
        price: json["price"] == null ? null : json["price"],
        publicationDate: json["publicationDate"] == null ? null : json["publicationDate"],
        synopsis: json["synopsis"] == null ? null : json["synopsis"],
        title: json["title"] == null ? null : json["title"],
        updatedBy: json["updatedBy"],
        updatedTime: json["updatedTime"],
    );

    Map<String, dynamic> toJson() => {
        "authorName": authorName == null ? null : authorName,
        "bookCategory": bookCategory == null ? null : bookCategory.toJson(),
        "bookCategoryId": bookCategoryId == null ? null : bookCategoryId,
        "bookStatus": bookStatus == null ? null : bookStatus,
        "createdBy": createdBy == null ? null : createdBy,
        "createdTime": createdTime == null ? null : createdTime,
        "id": id == null ? null : id,
        "imageUrl": imageUrl == null ? null : imageUrl,
        "isbn": isbn == null ? null : isbn,
        "price": price == null ? null : price,
        "publicationDate": publicationDate == null ? null : publicationDate,
        "synopsis": synopsis == null ? null : synopsis,
        "title": title == null ? null : title,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
    };
}

class BookCategory {
    BookCategory({
        this.code,
        this.createdBy,
        this.createdTime,
        this.id,
        this.name,
        this.updatedBy,
        this.updatedTime,
    });

    String code;
    String createdBy;
    String createdTime;
    int id;
    String name;
    dynamic updatedBy;
    dynamic updatedTime;

    factory BookCategory.fromJson(Map<String, dynamic> json) => BookCategory(
        code: json["code"] == null ? null : json["code"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        createdTime: json["createdTime"] == null ? null : json["createdTime"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        updatedBy: json["updatedBy"],
        updatedTime: json["updatedTime"],
    );

    Map<String, dynamic> toJson() => {
        "code": code == null ? null : code,
        "createdBy": createdBy == null ? null : createdBy,
        "createdTime": createdTime == null ? null : createdTime,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "updatedBy": updatedBy,
        "updatedTime": updatedTime,
    };
}
