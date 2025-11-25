import 'package:nook/features/authentication/domain/entities/user.dart';

abstract class AuthRepository {
/// Returns [User] or throws [Failure]
Future<User> login(String username, String password);
}