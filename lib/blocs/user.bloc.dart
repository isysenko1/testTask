import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_lists/models/user.model.dart';
import 'package:test_lists/services/load_data.dart';

class UserBloc extends Cubit<List<UserModel>> {
  UserBloc() : super(<UserModel>[]) {
    loadUsers();
  }
  Future<void> loadUsers() async {
    List<UserModel> results = await service.loadUsers();
    emit(results);
  }

  UserModel getUserById(int id) => state.firstWhere((UserModel element) => element.userId == id);
  UserService service = UserService();
}
