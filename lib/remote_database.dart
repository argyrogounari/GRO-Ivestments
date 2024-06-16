import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> sendArrayAndFetchData(List<int> numbers) async {
  final url = Uri.parse('https://yourapi.com/endpoint');
  final response = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'numbers': numbers,
    }),
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print('Response Data: $data');
  } else {
    throw Exception('Failed to fetch data');
  }
}
