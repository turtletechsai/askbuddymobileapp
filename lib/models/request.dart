

class LikePostRequestBody {
  LikePostRequestBody({
    this.id,
  });

  int id;

  factory LikePostRequestBody.fromJson(Map<String, dynamic> json) => LikePostRequestBody(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class BookmarkPostRequestBody {
  BookmarkPostRequestBody({
    this.id,
  });

  int id;

  factory BookmarkPostRequestBody.fromJson(Map<String, dynamic> json) => BookmarkPostRequestBody(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

class CreateStudyGroupRequestBody {
  CreateStudyGroupRequestBody({
    this.groupName,
    this.groupDescription,
    this.groupSubject,
    this.privacy,
  });

  String groupName;
  String groupDescription;
  String groupSubject;
  String privacy;

  factory CreateStudyGroupRequestBody.fromJson(Map<String, dynamic> json) => CreateStudyGroupRequestBody(
    groupName: json["group_name"],
    groupDescription: json["group_description"],
    groupSubject: json["group_subject"],
    privacy: json["privacy"],
  );

  Map<String, dynamic> toJson() => {
    "group_name": groupName,
    "group_description": groupDescription,
    "group_subject": groupSubject,
    "privacy": privacy,
  };
}

class UpdateUsernameRequestBody {
  UpdateUsernameRequestBody({
    this.username,
  });

  String username;

  factory UpdateUsernameRequestBody.fromJson(Map<String, dynamic> json) => UpdateUsernameRequestBody(
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
  };
}

class OnboardingSelectionRequest {
  OnboardingSelectionRequest({
    this.onboardingSelectionRequestClass,
  });

  int onboardingSelectionRequestClass;

  factory OnboardingSelectionRequest.fromJson(Map<String, dynamic> json) => OnboardingSelectionRequest(
    onboardingSelectionRequestClass: json["class"],
  );

  Map<String, dynamic> toJson() => {
    "class": onboardingSelectionRequestClass,
  };
}

