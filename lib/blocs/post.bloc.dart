import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lists/models/post.model.dart';
import 'package:test_lists/services/load_data.dart';

class PostBloc extends Cubit<List<PostModel>> {
  PostBloc() : super(<PostModel>[]) {
    loadUsers();
  }
  Future<void> loadUsers() async {
    List<PostModel> results = await service.loadPosts();
    emit(results);
  }

  int usersPostCount(int id) => state.where((PostModel element) => element.userId == id).length;
  List<PostModel> getListByUser(int id) => state.where((PostModel element) => element.userId == id).toList();

  PostService service = PostService();
}
