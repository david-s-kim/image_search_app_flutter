/// YApi QuickType插件生成，具体参考文档:https://plugins.jetbrains.com/plugin/18847-yapi-quicktype/documentation

import 'dart:convert';

PhotoResultDto photoResultDtoFromJson(String str) => PhotoResultDto.fromJson(json.decode(str));

String photoResultDtoToJson(PhotoResultDto data) => json.encode(data.toJson());

class PhotoResultDto {
    PhotoResultDto({
        required this.hits,
        required this.total,
        required this.totalHits,
    });

    List<Hit> hits;
    int total;
    int totalHits;

    factory PhotoResultDto.fromJson(Map<dynamic, dynamic> json) => PhotoResultDto(
        hits: List<Hit>.from(json["hits"].map((x) => Hit.fromJson(x))),
        total: json["total"],
        totalHits: json["totalHits"],
    );

    Map<dynamic, dynamic> toJson() => {
        "hits": List<dynamic>.from(hits.map((x) => x.toJson())),
        "total": total,
        "totalHits": totalHits,
    };
}

class Hit {
    Hit({
        required this.webformatHeight,
        required this.imageWidth,
        required this.previewHeight,
        required this.webformatUrl,
        required this.userImageUrl,
        required this.previewUrl,
        required this.comments,
        required this.type,
        required this.imageHeight,
        required this.tags,
        required this.previewWidth,
        required this.downloads,
        required this.collections,
        required this.userId,
        required this.largeImageUrl,
        required this.pageUrl,
        required this.id,
        required this.imageSize,
        required this.webformatWidth,
        required this.user,
        required this.views,
        required this.likes,
    });

    int webformatHeight;
    int imageWidth;
    int previewHeight;
    String webformatUrl;
    String userImageUrl;
    String previewUrl;
    int comments;
    String type;
    int imageHeight;
    String tags;
    int previewWidth;
    int downloads;
    int collections;
    int userId;
    String largeImageUrl;
    String pageUrl;
    int id;
    int imageSize;
    int webformatWidth;
    String user;
    int views;
    int likes;

    factory Hit.fromJson(Map<dynamic, dynamic> json) => Hit(
        webformatHeight: json["webformatHeight"],
        imageWidth: json["imageWidth"],
        previewHeight: json["previewHeight"],
        webformatUrl: json["webformatURL"],
        userImageUrl: json["userImageURL"],
        previewUrl: json["previewURL"],
        comments: json["comments"],
        type: json["type"],
        imageHeight: json["imageHeight"],
        tags: json["tags"],
        previewWidth: json["previewWidth"],
        downloads: json["downloads"],
        collections: json["collections"],
        userId: json["user_id"],
        largeImageUrl: json["largeImageURL"],
        pageUrl: json["pageURL"],
        id: json["id"],
        imageSize: json["imageSize"],
        webformatWidth: json["webformatWidth"],
        user: json["user"],
        views: json["views"],
        likes: json["likes"],
    );

    Map<dynamic, dynamic> toJson() => {
        "webformatHeight": webformatHeight,
        "imageWidth": imageWidth,
        "previewHeight": previewHeight,
        "webformatURL": webformatUrl,
        "userImageURL": userImageUrl,
        "previewURL": previewUrl,
        "comments": comments,
        "type": type,
        "imageHeight": imageHeight,
        "tags": tags,
        "previewWidth": previewWidth,
        "downloads": downloads,
        "collections": collections,
        "user_id": userId,
        "largeImageURL": largeImageUrl,
        "pageURL": pageUrl,
        "id": id,
        "imageSize": imageSize,
        "webformatWidth": webformatWidth,
        "user": user,
        "views": views,
        "likes": likes,
    };
}
