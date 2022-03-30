import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'network_helper.dart';

class NetworkHelperImpl extends NetworkHelper {
  @override
  Future<http.Response> get(String url, {Map headers}) {
    return http.get(Uri.parse(url), headers: appendHeader(headers: headers)).then((
      http.Response response,
    ) {
      return handleResponse(response);
    });
  }

  @override
  Future<http.Response> post(String url, {Map headers, body, encoding}) {
    return http
        .post(Uri.parse(url),
            body: json.encode(body),
            headers: appendHeader(headers: headers),
            encoding: encoding)
        .then((http.Response response) {
      return handleResponse(response);
    });
  }

  @override
  Future<http.Response> delete(String url, {Map headers}) {
    return http
        .delete(Uri.parse(url), headers: appendHeader(headers: headers))
        .then((http.Response response) {
      return handleResponse(response);
    });
  }

  @override
  Future<http.Response> put(String url, {Map headers, body, encoding}) {
    return http
        .put(Uri.parse(url),
            body: json.encode(body),
            headers: appendHeader(headers: headers),
            encoding: encoding)
        .then(
      (http.Response response) {
        return handleResponse(response);
      },
    );
  }

  @override
  http.Response handleResponse(http.Response response) {
    final int statusCode = response.statusCode;
    switch (statusCode) {
      case 401:
        {
          // di<UserDataProvider>().refreshIdToken();
          throw new Exception("Unauthorized");
        }
      case 500:
        {
          throw new Exception("Internal server error");
        }
      default:
        return response;
    }
  }

  @override
  Map appendHeader({Map headers, bool refresh = false}) {
    try {
      if (headers == null) {
        headers = <String, String>{};
      }
      var idToken;
      // idToken = di<UserDataProvider>().getIdToken();

      if (idToken == null || idToken.isEmpty)
        throw ("Id token cannot be empty!");

      headers["Authorization"] = 'Bearer $idToken';
      headers["Content-Type"] = "application/json";
    } catch (e) {
      debugPrint(e.toString());
    }

    return headers;
  }
}
