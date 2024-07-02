import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<dynamic> post({
    required String url,
    @required dynamic body,
  }) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);

      return data;
    } else if (response.statusCode == 222) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else {
      return response;
    }
  }

  Future<dynamic> postGrade({
    dynamic faliuer,
    @required required String url,
    @required dynamic body,
  }) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: jsonEncode(body),
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);

      return data;
    } else {
      print("${response.statusCode},resbonsebody${faliuer = response.body}");
    }
  }
}
