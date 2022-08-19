import 'package:flutter/material.dart';
import 'package:test_lists/models/post.model.dart';

class PostItem extends StatelessWidget {
  const PostItem(this.post, {Key? key}) : super(key: key);
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.black)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [Text(post.title), Text(post.body)]),
    );
  }
}
