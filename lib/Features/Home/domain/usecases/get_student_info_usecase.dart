// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:quantum_sit/Features/Home/domain/repository/home_repository.dart';

import '../../../../core/utiles/errors/failures.dart';
import '../../data/models/student_info/student_info.dart';

class GetStudentInfoUsecase {
  HomeRepository homeRepository;
  GetStudentInfoUsecase({
    required this.homeRepository,
  });

  Future<Either<Failures, StudentInfo>> execute(String id) async {
    return await homeRepository.getStudentInfo(id);
  }
}
