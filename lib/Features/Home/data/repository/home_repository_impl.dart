import 'package:dartz/dartz.dart';
import 'package:quantum_sit/Features/Home/data/data_source/remote/home_remote_data_source.dart';
import 'package:quantum_sit/Features/Home/data/models/student_info/student_info.dart';
import 'package:quantum_sit/Features/Home/domain/repository/home_repository.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRemoteDataSource homeRemoteDataSource = HomeRemoteDataSourceImpl();
  @override
  Future<Either<Failures, StudentInfo>> getStudentInfo(String id) async {
    try {
      var result = await homeRemoteDataSource.getStudentInfo(id);
      return right(result);
    } on ServerFailure catch (e) {
      return left(e);
    }
  }
}
