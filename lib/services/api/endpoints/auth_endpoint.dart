import '../endpoints.dart';

const String headerAuth = "Authorization";

const String token = "{token}";

class AuthEndpoints {
  AuthEndpoints._();

  static get getFeedDataEndpoint =>
      AuthEndpoint("/v1/feed/get", Method.get);

  static get getExploreDataEndpoint =>
      AuthEndpoint("/v1/feed/explore", Method.get);


}
