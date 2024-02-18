import 'dart:convert';

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
    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
     
      return data;
    } else {
      throw Exception(
          'there is an exception ${response.statusCode} ,whith body ${jsonDecode(response.body)}');
    }
  }
}
