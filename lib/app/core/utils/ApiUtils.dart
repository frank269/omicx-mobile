import 'dart:async';
import 'dart:convert' as convert;
import 'dart:io';
import 'package:http/http.dart' as http;
import 'app_exceptions.dart';

class ApiUtils {
  static const int TIME_OUT_DURATION = 10;
  static final client = http.Client();

  static Future<dynamic> sendGet({
    required String base,
    required String path,
    Map<String, String> headers = const {},
    Map<String, String>? params,
    bool isHttps = true,
  }) async {
    var uri = (isHttps == true
        ? Uri.https(base, path, params)
        : Uri.http(base, path, params));
    try {
      print('SEND GET: $uri');
      // print('HEADERS: $headers');
      print('PARAMS: $params');
      var response = await client
          .get(uri, headers: headers)
          .timeout(const Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  static dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return convert.jsonDecode(convert.utf8.decode(response.bodyBytes));
      case 400:
        throw BadRequestException(convert.utf8.decode(response.bodyBytes),
            response.request!.url.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(convert.utf8.decode(response.bodyBytes),
            response.request!.url.toString());
      case 500:
      case 501:
      default:
        throw FetchDataException(
            'Error occured with code: ${response.statusCode}',
            response.request!.url.toString());
    }
  }

  static Future<dynamic> sendPost({
    required String base,
    required String path,
    Map<String, String> headers = const {},
    required dynamic body,
    bool isHttps = true,
  }) async {
    var uri = isHttps == true ? Uri.https(base, path) : Uri.http(base, path);
    try {
      print('SEND POST: $uri');
      // print('HEADERS: $headers');
      print('BODY: $body');
      var response = await client
          .post(uri, headers: headers, body: body)
          .timeout(const Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }

  static Future<dynamic> sendPut({
    required String base,
    required String path,
    Map<String, String> headers = const {},
    required dynamic body,
    Map<String, String>? param,
    bool isHttps = true,
  }) async {
    var uri = isHttps == true
        ? Uri.https(base, path, param)
        : Uri.http(base, path, param);
    try {
      print('SEND PUT: $uri');
      // print('HEADERS: $headers');
      print('PARM: $param');
      print('BODY: $body');
      var response = await client
          .put(uri, headers: headers, body: body)
          .timeout(const Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          'API not responded in time', uri.toString());
    }
  }
}
