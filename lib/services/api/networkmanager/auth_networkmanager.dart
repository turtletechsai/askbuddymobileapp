import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:studygroups/models/request.dart';
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

  @override
  Future<Result> likePostAPI(LikePostRequestBody requestBody) async {
    AuthEndpoint endpoint = AuthEndpoints.likePost;
    endpoint.replaceInPath(postid, requestBody.id.toString());

    Result result = await _client.call(
      endpoint,
    );

    if (result is Success) {
      LikePostResponseBody likePostResponseBody =
      LikePostResponseBody.fromJson(json.decode(result.data.toString()));

      return Success<LikePostResponseBody>(likePostResponseBody);
    }
    return result;
  }

  @override
  Future<Result> bookmarkPostAPI(BookmarkPostRequestBody requestBody) async {
    AuthEndpoint endpoint = AuthEndpoints.bookmarkPost;
    endpoint.replaceInPath(postid, requestBody.id.toString());

    Result result = await _client.call(
      endpoint,
    );

    if (result is Success) {
      BookmarkPostResponseBody bookmarkPostResponseBody =
      BookmarkPostResponseBody.fromJson(json.decode(result.data.toString()));

      return Success<BookmarkPostResponseBody>(bookmarkPostResponseBody);
    }
    return result;
  }




}



