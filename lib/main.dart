import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lists/blocs/post.bloc.dart';
import 'package:test_lists/blocs/user.bloc.dart';
import 'package:test_lists/screens/user_list.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<PostBloc>(create: (_) => PostBloc()),
          BlocProvider<UserBloc>(create: (_) => UserBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            backgroundColor: Colors.white,
          ),
          home: const UsersListScreen(),
        ));
  }
}
