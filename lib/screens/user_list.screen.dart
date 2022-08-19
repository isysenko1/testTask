import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lists/blocs/user.bloc.dart';
import 'package:test_lists/screens/widgets/user_item.dart';

class UsersListScreen extends StatelessWidget {
  const UsersListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: context.watch<UserBloc>().state.isEmpty
                ? const CircularProgressIndicator()
                : ListView.builder(
                    itemCount: context.watch<UserBloc>().state.length,
                    itemBuilder: (context, index) {
                      return UserItem(context.watch<UserBloc>().state[index]);
                    },
                  )));
  }
}
