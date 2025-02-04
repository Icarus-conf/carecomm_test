import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';

class DioHelper {
  static var dio = Dio();
  static init() {
    dio = Dio(BaseOptions(headers: {
      'Content-Type': 'application/json',
    }, receiveDataWhenStatusError: true));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    String? token,
  }) async {
    try {
      return await dio.get(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  static Future<Response> getDataApple({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await dio.post(url,
          queryParameters: query,
          data: data,
          options: Options(
            headers: headers,
          ));
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Content-Type': 'application/json',
        'Authorization': token ?? '',
      };
      return await dio.post(
        url,
        queryParameters: query,
        data: data,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  static Future<Response> deleteData({
    required String url,
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'Content-Type': 'application/json',
        'Authorization': token ?? '',
      };
      return await dio.delete(
        url,
        queryParameters: query,
        options: Options(
          headers: headers,
        ),
      );
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  static void _handleDioError(DioException e) {
    if (e.type == DioExceptionType.connectionError &&
        e.error is SocketException) {
      log("No internet connection.");
    } else if (e.type == DioExceptionType.badResponse) {
      log("Received invalid status code: ${e.response?.statusCode}");
    } else if (e.type == DioExceptionType.connectionTimeout) {
      log("Connection timeout.");
    } else if (e.type == DioExceptionType.receiveTimeout) {
      log("Receive timeout.");
    } else if (e.type == DioExceptionType.sendTimeout) {
      log("Send timeout.");
    } else {
      log("Unexpected error: ${e.message}");
    }
  }
}
