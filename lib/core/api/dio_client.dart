import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/feature/user/user.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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
      const storage = FlutterSecureStorage();
      auth = await storage.read(key: "token");
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
      if (e.response?.statusCode == 502) {
        return Left(ServerFailure("502 Bad Gateway"));
      } else if (e.response?.statusCode == 401) {
        return Left(UnauthorizedFailure());
      }
      return Left(
        ServerFailure(
          e.response?.data?['msg'] as String? ?? "could not connect to server",
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
      const storage = FlutterSecureStorage();
      auth = await storage.read(key: "token");
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
      if (e.response?.statusCode == 502) {
        return Left(ServerFailure("502 Bad Gateway"));
      }
      return Left(
        ServerFailure(
          e.response?.data?['msg'] as String? ?? "could not connect to server",
        ),
      );
    }
  }
}
