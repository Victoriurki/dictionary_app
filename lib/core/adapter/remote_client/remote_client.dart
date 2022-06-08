import 'package:dio/dio.dart';
import '../../constants/api_response.dart';
import 'remote_client_error.dart';

abstract class RemoteClient {
  Future<ApiResponse<List, RemoteClientError>> get(String url);
}

class DioRemoteClient implements RemoteClient {
  final _dio = Dio();
  @override
  Future<ApiResponse<List, RemoteClientError>> get(String url) async {
    try {
      final response = await _dio.get(
        url,
      );

      if (response.statusCode != 200) {
        return ApiResponse(
            statusCode: response.statusCode!,
            error: RemoteClientError.badRequest);
      }

      return ApiResponse(statusCode: 200, data: response.data);
    } on DioError catch (_) {
      return ApiResponse(statusCode: 500, error: RemoteClientError.badRequest);
    }
  }
}
