import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:netgen/model/user.dart';

void main(List<String> arguments) {
  final data = json.decode(File('followers.json').readAsStringSync());

  for (final item in data['users']) {
    final user = User.fromJson(item);

    print(user.name);
  }
}
