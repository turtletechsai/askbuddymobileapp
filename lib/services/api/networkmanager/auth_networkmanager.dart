import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/endpoints/auth_endpoint.dart';
import 'package:studygroups/services/storage/device_store.dart';



import '../endpoints.dart';
import '../network_client.dart';
import '../results.dart';

class NetworkManager {
  INetworkClient _client;

  DeviceStore _deviceStore;

  NetworkManager(this._client, this._deviceStore);

  @override
  Future<Result> getFeedDataAPI() async {
    AuthEndpoint endpoint = AuthEndpoints.getFeedDataEndpoint;

    Result result = await _client.call(
      endpoint,
    );

    if (result is Success) {
      GetFeedPageResponseData getFeedPageResponseData =
      GetFeedPageResponseData.fromJson(json.decode(result.data.toString()));

      return Success<GetFeedPageResponseData>(getFeedPageResponseData);
    }
    return result;
  }

  @override
  Future<Result> getExploreDataAPI() async {
    AuthEndpoint endpoint = AuthEndpoints.getExploreDataEndpoint;

    Result result = await _client.call(
      endpoint,
    );

    if (result is Success) {
      GetExplorePageResponseData getExplorePageResponseData =
      GetExplorePageResponseData.fromJson(json.decode(result.data.toString()));

      return Success<GetExplorePageResponseData>(getExplorePageResponseData);
    }
    return result;
  }






}



