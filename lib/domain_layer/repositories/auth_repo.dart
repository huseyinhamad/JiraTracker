import 'package:dartz/dartz.dart';
import 'package:jiratracker/domain_layer/failures/failures.dart';

abstract class AuthRepo {
  Future<Either<Failure, String>> authorizeUser();
}
