import 'package:injectable/injectable.dart';
import 'package:nook/core/error/failures.dart';
import 'package:nook/features/authentication/domain/usecases/login_user.dart';
import 'package:nook/features/authentication/presentation/bloc/login_event.dart';
import 'package:nook/features/authentication/presentation/bloc/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUser loginUser;

  LoginBloc({required this.loginUser}) : super(LoginInitial()) {
    on<LoginSubmitted>(_onLoginSubmitted);
  }

  Future<void> _onLoginSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());
    try {
      final user = await loginUser.call(
        username: event.username,
        password: event.password,
      );
      emit(LoginSuccess(user));
    } on InvalidCredentialsFailure catch (e) {
      emit(LoginFailure(e.message));
    } on Failure catch (e) {
      emit(LoginFailure(e.message));
    } catch (e) {
      emit(LoginFailure('Unexpected error'));
    }
  }
}
