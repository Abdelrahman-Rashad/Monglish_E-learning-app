import 'package:dartz/dartz.dart';
import 'package:quantum_sit/Features/Login/data/models/login/login.dart';
import 'package:quantum_sit/Features/Login/data/models/login_mooglish_input.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

abstract class LoginRebo {
  Future<Either<Failures, Login>> LoginMooglish(
      LoginMooglishInput loginMooglishInput);
}
