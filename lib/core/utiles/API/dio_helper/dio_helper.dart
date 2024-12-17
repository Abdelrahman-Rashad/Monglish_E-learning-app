import 'package:dio/dio.dart';
import 'package:quantum_sit/core/constants/api_constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(baseUrl: ApiConstants.BASEURL));
  }

  static Future<Response> getData(
      {required String endpoint, String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer ${token ?? ''}',
    };
    Response response = await dio.get(endpoint);
    return response;
  }

  static Future<Response?> postData(
      {required String endpoint,
      Map<String, dynamic>? body,
      String? token}) async {
    dio.options.headers = {
      'Authorization': 'Bearer ${token ?? ''}',
    };
    try {
      Response response = await dio.post(endpoint, data: body);
      return response;
    } on DioException catch (e) {
      return e.response;
    }
  }
}
