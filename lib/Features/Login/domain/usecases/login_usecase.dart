import 'package:dartz/dartz.dart';
import 'package:quantum_sit/Features/Login/data/models/login/login.dart';
import 'package:quantum_sit/Features/Login/data/models/login_mooglish_input.dart';
import 'package:quantum_sit/Features/Login/domain/repository/login_repo.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

class LoginUsecase {
  final LoginRebo loginRebo;

  LoginUsecase(this.loginRebo);

  Future<Either<Failures, Login>> execute(
      LoginMooglishInput loginMooglishInput) async {
    return await loginRebo.LoginMooglish(loginMooglishInput);
  }
}
