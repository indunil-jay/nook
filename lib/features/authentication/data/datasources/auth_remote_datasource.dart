import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../models/user_model.dart';
import '../models/login_request.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(LoginRequest request);
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio client;

  AuthRemoteDataSourceImpl(this.client);

  @override
  Future<UserModel> login(LoginRequest request) async {
    // Replace with your real endpoint. Here we simulate a call.
    // Example using Dio to call an API:
    // final response = await client.post('/auth/login', data: request.toJson());
    // if (response.statusCode == 200) return UserModel.fromJson(response.data);

    // Simulated response:
    await Future.delayed(const Duration(seconds: 1));

    // simple mock logic
    if (request.username == 'test' && request.password == 'password') {
      final payload = {
        'id': 'user-1',
        'username': 'test',
        'email': 'test@example.com',
        'token': 'fake-jwt-token-123',
      };
      return UserModel.fromJson(payload);
    }

    // simulate server rejection
    throw DioException(
      requestOptions: RequestOptions(path: '/auth/login'),
      response: Response(
        requestOptions: RequestOptions(path: '/auth/login'),
        statusCode: 401,
        data: {'message': 'Invalid credentials'},
      ),
      type: DioExceptionType.badResponse,
    );
  }
}
