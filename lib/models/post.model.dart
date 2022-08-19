class PostModel {
  PostModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'] as int;
    id = json['id'] as int;
    title = json['title'] as String;
    body = json['body'] as String;
  }
  late int userId;
  late int id;
  late String title;
  late String body;
}
