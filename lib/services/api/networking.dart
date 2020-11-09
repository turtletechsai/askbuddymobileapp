import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:studygroups/services/storage/storage.dart';

import 'endpoints.dart';
import 'network_client.dart';
import 'networkmanager/auth_networkmanager.dart';

BaseOptions _requestOptions = BaseOptions(
  baseUrl: "http://18.222.164.63:7000",
  headers: {},
  queryParameters: {},
);

CookieJar _cookieJar;
Future<CookieJar> _getCookieJar() async {
  if (_cookieJar == null) {
    Directory tempDir = await getTemporaryDirectory();
    _cookieJar = PersistCookieJar(dir: tempDir.path);
  }
  return _cookieJar;
}

Dio _dio;
Future<Dio> _getDio() async {
  if (_dio == null) {
    _dio = await _createDio(_requestOptions);
  }
  return _dio;
}

Future<Dio> _createDio(BaseOptions options) async {
  Dio dio = Dio();

  dio.interceptors.add(LogInterceptor(
      request: true,
      responseHeader: true,
      responseBody: true,
      requestHeader: true,
      error: true));
  _dio = dio;
  return dio;
}

NetworkClient _client;
Future<NetworkClient> getClient(String baseUrl) async {
  if (_client == null) {
    _client = NetworkClient(await _getDio(), baseUrl);
  }
  return _client;
}

NetworkManager _networkManager;
Future<NetworkManager> getAuthNetworkManager(String baseURL) async {
  if (_networkManager == null) {
    _networkManager =
        NetworkManager(await getClient(baseURL), await getDeviceStore());
  }
  return _networkManager;
}
