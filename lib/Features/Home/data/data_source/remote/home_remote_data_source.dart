import 'package:dio/dio.dart';
import 'package:quantum_sit/Features/Home/data/models/student_info/student_info.dart';
import 'package:quantum_sit/core/constants/api_constants.dart';
import 'package:quantum_sit/core/utiles/API/dio_helper/dio_helper.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

import '../../../../../core/utiles/errors/error_massage_model/error_massage_model.dart';

abstract class HomeRemoteDataSource {
  Future<StudentInfo> getStudentInfo(String id);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<StudentInfo> getStudentInfo(String id) async {
    Response response = await DioHelper.getData(
        endpoint: ApiConstants.STUDENT_INFO + id, token: ApiConstants.TOKEN);
    if (response.statusCode == 200) {
      return StudentInfo.fromJson(response.data);
    } else {
      throw ServerFailure(
          errmassage: ErrorMassageModel.fromJson(response.data).message!);
    }
  }
}
