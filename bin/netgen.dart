import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mustache_template/mustache.dart';
import 'package:netgen/model/user.dart';

final youngUsers = <User>[];

var template =
    Template(File('index.html').readAsStringSync(), name: 'index.html');
void main(List<String> arguments) async {
  final toScrape = ['redsolver', 'niklasschr_'];

  for (final screenName in toScrape) {
    print('Fetching followers of $screenName');
    final file = File('data/$screenName/followers.json');

    if (!file.existsSync()) {
      print('[HTTP] Fetching followers of $screenName');

      final res = await http.get(
        'https://api.twitter.com/1.1/followers/list.json?count=200&screen_name=$screenName',
        headers: {
          'Authorization': 'Bearer ' + Platform.environment['TWITTER_TOKEN']
        },
      );
      if (res.statusCode != 200) {
        throw 'HTTP ${res.statusCode} ${res.body}';
      }
      file.createSync(recursive: true);
      file.writeAsStringSync(res.body);
    }
    final data = json.decode(file.readAsStringSync());

    final users = <User>[];

    for (final item in data['users']) {
      final user = User.fromJson(item);
      users.add(user);

      /* final match = RegExp(r'[0-9]{2}[^a-zA-Z]').stringMatch(user.description);
      if (match != null) {
        print('${user.name}: ${user.description}'); */
      youngUsers.add(user);
      /* } */

      //print(user.name);
    }
    print('Found ${users.length} followers.');
  }
  final server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    4041,
  );
  await for (var request in server) {
    handleRequest(request);
  }
}

void handleRequest(HttpRequest request) {
  try {
    if (request.method == 'GET') {
      request.response.headers.set('content-type', 'text/html;charset=utf-8');

      request.response.add(utf8.encode(template.renderString({
        'users': [
          for (final user in youngUsers)
            {
              'profileImage': user.profileImageUrlHttps,
              'screenName': user.screenName,
              'name': user.name,
            }
        ]
      })));

      request.response.close();
    }
  } catch (e) {
    print('Exception in handleRequest: $e');
  }
  print('Request handled.');
}
