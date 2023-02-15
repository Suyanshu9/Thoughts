import 'package:http/http.dart';
import 'dart:convert';

class Api {
  Future<List> buttonPressed() async {
    try {
      Response returnResult = await get(
        Uri.parse('http://10.0.2.2:8000/app/incoMode'),
      );
      if (returnResult.statusCode == 200) {
        return jsonDecode(returnResult.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
