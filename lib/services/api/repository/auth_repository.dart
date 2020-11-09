import 'package:flutter/material.dart';
import 'package:studygroups/models/response.dart';
import 'package:studygroups/services/api/networkmanager/auth_networkmanager.dart';

import '../results.dart';

class NetworkRepository with ChangeNotifier {
  final NetworkManager apiClient;

  NetworkRepository({@required this.apiClient}) : assert(apiClient != null);

  Future<GetFeedPageResponseData> getFeedData() async {
    Result apiResult = await apiClient.getFeedDataAPI();
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }


  Future<GetExplorePageResponseData> getExploreData() async {
    Result apiResult = await apiClient.getExploreDataAPI();
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }


}
