import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lists/blocs/user.bloc.dart';
import 'package:test_lists/models/post.model.dart';
import 'package:test_lists/screens/widgets/post_item.dart';

import '../blocs/post.bloc.dart';

class PostList extends StatelessWidget {
  const PostList(this.userId, {super.key});
  final int userId;

  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = context.watch<PostBloc>().getListByUser(userId);
    return Scaffold(
        body: Center(
            child: posts.isEmpty
                ? const CircularProgressIndicator()
                : Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  context.watch<UserBloc>().getUserById(userId).url,
                                ))),
                        height: 200,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: posts.length,
                          itemBuilder: (context, index) {
                            return PostItem(posts[index]);
                          },
                        ),
                      ),
                    ],
                  )));
  }
}
