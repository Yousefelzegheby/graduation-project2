import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  final dio = Dio();

  Future<Map<String, dynamic>> get(
      {required String url, @required dynamic body}) async {
    var response = await dio.post(url, data: body);
    return response.data;
  }
}
