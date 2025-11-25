

import 'package:injectable/injectable.dart';
import 'package:nook/features/authentication/data/repositories/auth_repository.dart';
import 'package:nook/features/authentication/domain/entities/user.dart';

@injectable
class LoginUser {
final AuthRepository repository;
LoginUser(this.repository);


Future<User> call({required String username, required String password}) async {
return await repository.login(username, password);
}
}