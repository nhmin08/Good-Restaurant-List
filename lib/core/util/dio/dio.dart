import 'package:dio/dio.dart';
import 'package:good_restaurant_list/core/util/logger.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// river pod
part 'dio.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final Dio dio = Dio();
  dio.interceptors.add(CustomInterceptor(ref: ref));
  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: false,
      responseBody: false,
      responseHeader: false,
      error: true,
      compact: false,
    ),
  );
  return dio;
}

class CustomInterceptor extends Interceptor {
  CustomInterceptor({required this.ref});
  final Ref ref;

  // api 요청 보낼때
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.headers['Authorization'] != null) {
      options.headers.remove('Authorization');
      final String? token = '';
      options.headers.addAll({'Authorization': 'Bearer $token'});
    }

    return super.onRequest(options, handler);
  }

  // api 응답 받을때

  // api 통신 중 에러 발생했을때
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.e(
      '[ERROR] ${err.requestOptions.method}] ${err.requestOptions.uri}  StatusCode:${err.response?.statusCode}, ${err.message}, ${err.type}',
    );

    if (err.type == DioExceptionType.connectionError) {
      logger.e('[Dio] Connection Error');
      return handler.reject(err);
    }

    return handler.reject(err);
  }
}
