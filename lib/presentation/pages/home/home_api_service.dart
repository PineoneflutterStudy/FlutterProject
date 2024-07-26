import 'dart:convert';

import 'package:http/http.dart' as http;

import 'home_model.dart';

class HomeApiService {
  static final String indexUrl =
      'https://www.yeogi.com/_next/data/jzaVnKYL2Uswa4LDBlzpL/index.json';
  // https://www.yeogi.com/_next/data/jzaVnKYL2Uswa4LDBlzpL/index.json
  //'https://www.yeogi.com/_next/data/MuNcWaI6D16ttbvQoSWZ2/index.json';

  static Future<HomeModel> getIndex() async {
    final url = Uri.parse(indexUrl);
    final response = await http.get(url);

    return HomeModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }
}
