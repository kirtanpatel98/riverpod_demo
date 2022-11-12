import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/models/dummy.dart';

import 'package:http/http.dart' as http;

class ApiServices {
  static final http.Client _client = http.Client();
  String api = "https://reqres.in/api/users?page=2";

  Future<List<DummyModels>> getData() async {
    try {
      var response = await _client.get(
        Uri.parse('https://reqres.in/api/users?page=2'),
      );
      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body)['data'];
        return result.map((e) => DummyModels.fromJson(e)).toList();
      } else {
        throw Exception(response.reasonPhrase);
      }
    } catch (e) {
      print(e.toString());
    }
    return [];
  }
}

final apiProver = Provider<ApiServices>((ref) => ApiServices());
