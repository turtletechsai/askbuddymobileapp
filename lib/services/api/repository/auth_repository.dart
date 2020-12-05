import 'package:flutter/material.dart';
import 'package:studygroups/models/request.dart';
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

  Future<LikePostResponseBody> likePost(LikePostRequestBody requestBody) async {
    Result apiResult = await apiClient.likePostAPI(requestBody);
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<BookmarkPostResponseBody> bookmarkPost(BookmarkPostRequestBody requestBody) async {
    Result apiResult = await apiClient.bookmarkPostAPI(requestBody);
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<GetSubjectsForStudyGroupsResponseBodyData> getSubjectsForStudyGroups() async {
    Result apiResult = await apiClient.getSubjectsForStudyGroupsAPI();
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<GetOnboardingData> getOnboarding() async {
    Result apiResult = await apiClient.getOnboardingAPI();
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<CreateGroupResponseBody> createGroup(CreateStudyGroupRequestBody requestBody) async {
    Result apiResult = await apiClient.createGroupAPI(requestBody);
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<UpdateUsernameResponseBody> updateUsername(UpdateUsernameRequestBody requestBody) async {
    Result apiResult = await apiClient.updateUsernameAPI(requestBody);
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<OnboardingSelectionResponseBody> onboardingSelection(OnboardingSelectionRequest requestBody) async {
    Result apiResult = await apiClient.updateOnboardingSelectionAPI(requestBody);
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }

  Future<GetCommentsResponseData> getComments(int post) async {
    Result apiResult = await apiClient.getCommentsAPI(post);
    if (apiResult is Success) return apiResult.data;
    if (apiResult is Error) throw apiResult.error;
  }
}
