import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nook/core/error/failures.dart';
import 'package:nook/core/network/network_info.dart';
import 'package:nook/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:nook/features/authentication/data/models/login_request.dart';
import 'package:nook/features/authentication/data/repositories/auth_repository.dart';
import 'package:nook/features/authentication/domain/entities/user.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
final AuthRemoteDataSource remote;
final NetworkInfo networkInfo;


AuthRepositoryImpl({required this.remote, required this.networkInfo});


@override
Future<User> login(String username, String password) async {
if (!await networkInfo.isConnected) {
throw ServerFailure('No network connection');
}


try {
final request = LoginRequest(username: username, password: password);
final userModel = await remote.login(request);
return userModel;
} on DioException catch (e) {
if (e.response?.statusCode == 401) throw InvalidCredentialsFailure('Invalid username or password');
throw ServerFailure(e.message ?? 'Server error');
} catch (e) {
throw ServerFailure(e.toString());
}
}
}