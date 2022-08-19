class UserModel {
  UserModel.fromJson(Map<String, dynamic> json) {
    albumId = json['albumId'] as int;
    userId = json['userId'] as int;
    name = json['name'] as String;
    url = json['url'] as String;
    thumbnailUrl = json['thumbnailUrl'] as String;
  }
  late int albumId;
  late int userId;
  late String name;
  late String url;
  late String thumbnailUrl;
}
