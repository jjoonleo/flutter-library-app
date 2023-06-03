import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../core.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

class DioClient {
  late Dio _dio;

  DioClient(String? auth) {
    _dio = _createDio(auth);
  }

  Dio _createDio(String? auth) => Dio(
        BaseOptions(
          baseUrl: APIList.baseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            if (auth != null) ...{
              'Authorization': auth,
            }
          },
          receiveTimeout: const Duration(seconds: 60),
          connectTimeout: const Duration(seconds: 60),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    String? auth,
    required ResponseConverter<T> converter,
  }) async {
    try {
      final response = await _dio.get(url,
          queryParameters: queryParameters,
          options: Options(
            headers: {
              if (auth != null) ...{
                'Authorization': auth,
              }
            },
          ));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(converter(response.data));
      }

      debugPrint(response.toString());

      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
      );
    } on DioError catch (e) {
      debugPrint(e.toString());
      return Left(
        ServerFailure(
          e.response?.data?['msg'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    String? auth,
    required ResponseConverter<T> converter,
  }) async {
    try {
      final response = await _dio.post(url,
          data: data,
          options: Options(
            headers: {
              if (auth != null) ...{
                'Authorization': auth,
              }
            },
          ));
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(converter(response.data));
      }

      debugPrint(response.toString());
      throw DioError(
        requestOptions: response.requestOptions,
        response: response,
      );
    } on DioError catch (e) {
      return Left(
        ServerFailure(
          e.response?.data?['msg'] as String? ?? e.message,
        ),
      );
    }
  }
}
