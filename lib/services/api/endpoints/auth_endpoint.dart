import '../endpoints.dart';

const String headerAuth = "Authorization";

const String token = "{token}";

const String postid = "{postid}";


class AuthEndpoints {
  AuthEndpoints._();

  static get getFeedDataEndpoint =>
      AuthEndpoint(":7000/v1/feed/get", Method.get);

  static get getExploreDataEndpoint =>
      AuthEndpoint(":7000/v1/feed/explore", Method.get);

  static get likePost =>
      AuthEndpoint(":7000/v1/feed/like-post/$postid?vote=1", Method.post);

  static get bookmarkPost =>
      AuthEndpoint(":7000/v1/feed/bookmark-post/$postid", Method.post);

  static get getSubjectsForStudyGroups =>
      AuthEndpoint(":4000/v1/study/get-subjects", Method.get);

  static get getOnboarding =>
      AuthEndpoint(":4000/v1/student/get-onboarding", Method.get);

  static get createGroup =>
      AuthEndpoint(":4000/v1/study/create-group", Method.post);

  static get updateUsername =>
      AuthEndpoint(":4000/v1/login/update-username", Method.post);

  static get updateOnboardingSelection =>
      AuthEndpoint(":4000/v1/student/set-student-prefrences", Method.post);

  static get getComments =>
      AuthEndpoint(":4000/v1/feed/get-comments/$postid", Method.get);

}
