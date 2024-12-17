// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:quantum_sit/Features/Login/data/data_source/remote/remote_data_source_login.dart';
import 'package:quantum_sit/Features/Login/data/models/login/login.dart';
import 'package:quantum_sit/Features/Login/data/models/login_mooglish_input.dart';
import 'package:quantum_sit/Features/Login/domain/repository/login_repo.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

class LoginRepoImpl extends LoginRebo {
  RemoteDataSourceLogin remoteDataSourceLogin = RemoteDataSourceLoginImpl();

  @override
  Future<Either<Failures, Login>> LoginMooglish(
      LoginMooglishInput loginMooglishInput) async {
    try {
      final result =
          await remoteDataSourceLogin.postLoginMooglish(loginMooglishInput);
      return Right(result);
    } on ServerFailure catch (e) {
      return left(e);
    }
  }
}
