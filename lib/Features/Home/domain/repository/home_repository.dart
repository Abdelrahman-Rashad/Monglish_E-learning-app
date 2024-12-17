import 'package:dartz/dartz.dart';
import 'package:quantum_sit/Features/Home/data/models/student_info/student_info.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

abstract class HomeRepository {
  Future<Either<Failures, StudentInfo>> getStudentInfo(String id);
}
