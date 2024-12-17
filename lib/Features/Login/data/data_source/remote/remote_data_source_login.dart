import 'package:dio/dio.dart';
import 'package:quantum_sit/Features/Login/data/models/login/login.dart';
import 'package:quantum_sit/Features/Login/data/models/login_mooglish_input.dart';
import 'package:quantum_sit/core/constants/api_constants.dart';
import 'package:quantum_sit/core/utiles/API/dio_helper/dio_helper.dart';
import 'package:quantum_sit/core/utiles/errors/error_massage_model/error_massage_model.dart';
import 'package:quantum_sit/core/utiles/errors/failures.dart';

abstract class RemoteDataSourceLogin {
  Future<Login> postLoginMooglish(LoginMooglishInput loginMooglishInput);
}

class RemoteDataSourceLoginImpl extends RemoteDataSourceLogin {
  @override
  Future<Login> postLoginMooglish(LoginMooglishInput loginMooglishInput) async {
    Response? response = await DioHelper.postData(
        endpoint: ApiConstants.LOGIN, body: loginMooglishInput.tojson());
    if (response!.statusCode == 200) {
      return Login.fromJson(response.data);
    } else {
      throw ServerFailure(
          errmassage: ErrorMassageModel.fromJson(response.data).message!);
    }
  }
}
