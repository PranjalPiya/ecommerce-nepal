import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecommerce_nepal/core/constant/urls.dart';

class DioHelper {
  static final DioHelper _singleton = DioHelper._internal();
  late Dio dio;

  factory DioHelper() {
    return _singleton;
  }

  DioHelper._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl, // Set your base URL here
        connectTimeout: const Duration(
          seconds: 120,
        ),
        receiveTimeout: const Duration(
          seconds: 120,
        ),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Perform actions before the request is sent, like adding tokens
        log("Request: ${options.method} ${options.path}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        // Perform actions on response data
        log("Response: ${response.statusCode} ${response.data}");
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        // Perform actions on error
        log("Error: ${e.response?.statusCode} ${e.message}");
        return handler.next(e);
      },
    ));
  }

  Future<dynamic> getData(
      {String? path, Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get<dynamic>(path!,
          queryParameters: queryParameters,
          options: Options(
            validateStatus: (_) => true,
            contentType: Headers.jsonContentType,
            responseType: ResponseType.json,
          ));

      return response.data;
    } catch (e) {
      rethrow;
    }
    // return await dio.get(path!, queryParameters: queryParameters);
  }

  Future<dynamic> postData(String path, {Map<String, dynamic>? data}) async {
    return await dio.post(path, data: data);
  }

  Future<dynamic> putData(String path, {Map<String, dynamic>? data}) async {
    return await dio.put(path, data: data);
  }

  Future<dynamic> deleteData(String path, {Map<String, dynamic>? data}) async {
    return await dio.delete(path, data: data);
  }
}
