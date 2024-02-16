import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiServer {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServer(this.dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    var response = await dio.get(
      '$_baseUrl$endPoint',
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoint,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/json'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    var response = await dio.post(
      '$_baseUrl$endPoint',
      data: body,
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }

  Future<Map<String, dynamic>> put(
      {required String endPoint,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({
      'Content-Type': 'application/json',
    });
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    var response = await dio.put(
      '$_baseUrl$endPoint',
      data: body,
      options: Options(
        headers: headers,
      ),
    );
    return response.data;
  }
}
