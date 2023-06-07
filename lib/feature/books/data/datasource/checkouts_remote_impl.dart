import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_library_app/core/core.dart';
import 'package:flutter_library_app/feature/books/books.dart';

class CheckoutsRemoteDatasourceImpl implements CheckoutsRemoteDatasource {
  final DioClient _client;

  CheckoutsRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, Checkouts>> load() async {
    final response = await _client.getRequest(
      APIList.loadCheckouts,
      converter: (response) =>
          Checkouts.fromJson(response as Map<String, dynamic>),
    );
    debugPrint(response.toString());
    return response;
  }

  @override
  Future<Either<Failure, Checkout?>> getCheckoutByBookId(
      String id, String auth) async {
    final response = await _client.getRequest(
      APIList.getCheckoutByBookId,
      queryParameters: {"id":id},
      auth: auth,
      converter: (response) {
        if(response == null) return null;
        return Checkout.fromJson(response as Map<String, dynamic>);
      },
    );
    debugPrint(response.toString());
    return response;
  }
}
