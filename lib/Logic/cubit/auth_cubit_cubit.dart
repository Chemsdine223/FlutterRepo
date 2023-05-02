import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../Data/Models/user.dart';
import '../../Data/auth/auth_service.dart';

part 'auth_cubit_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());

  Future<void> login(String phone, String password) async {
    emit(AuthCubitLoading());
    await AuthService.loadTokens();

    try {
      final response = await AuthService.signIn(phone, password);
      emit(AuthCubitSuccess(response));
    } catch (e) {
      print(e);
      emit(AuthCubitError(e.toString()));
    }
  }
}
