import 'package:dartz/dartz.dart';
import 'package:jiratracker/domain_layer/failures/failures.dart';
import 'package:jiratracker/domain_layer/repositories/auth_repo.dart';

class AuthUseCases {
  final AuthRepo authRepo;
  AuthUseCases({required this.authRepo});

  Future<Either<Failure, String>> authorize() async {
    return authRepo.authorizeUser();
    //space for business logic
  }
}
