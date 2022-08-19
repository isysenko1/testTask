import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lists/blocs/post.bloc.dart';
import 'package:test_lists/models/user.model.dart';
import 'package:test_lists/screens/posts_list.screen.dart';

class UserItem extends StatelessWidget {
  const UserItem(this.user, {Key? key}) : super(key: key);
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PostList(user.userId)),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ClipOval(child: Image.network(user.url, width: 70, height: 70)),
          Column(
            children: [Text(user.name), Text(context.watch<PostBloc>().usersPostCount(user.userId).toString())],
          ),
          const Icon(Icons.arrow_right)
        ]),
      ),
    );
  }
}
