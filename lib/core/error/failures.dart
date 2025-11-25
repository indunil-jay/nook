import 'package:equatable/equatable.dart';


abstract class Failure extends Equatable {
final String message;
const Failure(this.message);


@override
List<Object?> get props => [message];
}


class ServerFailure extends Failure {
const ServerFailure([String message = 'Server error']) : super(message);
}


class InvalidCredentialsFailure extends Failure {
const InvalidCredentialsFailure([String message = 'Invalid credentials']) : super(message);
}


class CacheFailure extends Failure {
const CacheFailure([String message = 'Cache error']) : super(message);
}