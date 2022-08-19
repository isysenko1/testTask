import 'package:dio/dio.dart';
import 'package:test_lists/models/post.model.dart';
import 'package:test_lists/models/user.model.dart';

class UserService {
  Dio dio = Dio();

  Future<List<UserModel>> loadUsers() async {
    final response = await dio.get('https://my-json-server.typicode.com/SharminSirajudeen/test_resources/users');
    if (response.statusCode == 200) {
      return List<UserModel>.from(response.data.map((dynamic i) => UserModel.fromJson(i)));
    } else {
      return <UserModel>[];
    }
  }
}

class PostService {
  Dio dio = Dio();

  Future<List<PostModel>> loadPosts() async {
    final response = await dio.get('https://my-json-server.typicode.com/SharminSirajudeen/test_resources/posts');
    if (response.statusCode == 200) {
      return List<PostModel>.from(response.data.map((dynamic i) => PostModel.fromJson(i)));
    } else {
      return <PostModel>[];
    }
  }
}
