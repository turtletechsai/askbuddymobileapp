import '../endpoints.dart';

const String headerAuth = "Authorization";

const String token = "{token}";

const String postid = "{postid}";

class AuthEndpoints {
  AuthEndpoints._();

  static get getFeedDataEndpoint =>
      AuthEndpoint("/v1/feed/get", Method.get);

  static get getExploreDataEndpoint =>
      AuthEndpoint("/v1/feed/explore", Method.get);

  static get likePost =>
      AuthEndpoint("v1/feed/like-post/$postid?vote=1", Method.post);




}
