
class GetExplorePageResponseData {
  GetExplorePageResponseData({
    this.meta,
    this.data,
  });

  Meta meta;
  List<GetExplorePageResponseDataDatum> data;

  factory GetExplorePageResponseData.fromJson(Map<String, dynamic> json) => GetExplorePageResponseData(
    meta: Meta.fromJson(json["meta"]),
    data: List<GetExplorePageResponseDataDatum>.from(json["data"].map((x) => GetExplorePageResponseDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetExplorePageResponseDataDatum {
  GetExplorePageResponseDataDatum({
    this.name,
    this.type,
    this.title,
    this.data,
  });

  String name;
  String type;
  String title;
  List<DatumDatum> data;

  factory GetExplorePageResponseDataDatum.fromJson(Map<String, dynamic> json) => GetExplorePageResponseDataDatum(
    name: json["name"],
    type: json["type"],
    title: json["title"],
    data: List<DatumDatum>.from(json["data"].map((x) => DatumDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": type,
    "title": title,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class DatumDatum {
  DatumDatum({
    this.id,
    this.title,
    this.bgColor,
    this.textColor,
    this.onlineMembers,
    this.totalMembers,
    this.name,
    this.avatar,
    this.rank,
    this.points,
  });

  int id;
  String title;
  String bgColor;
  String textColor;
  int onlineMembers;
  String totalMembers;
  String name;
  String avatar;
  int rank;
  int points;

  factory DatumDatum.fromJson(Map<String, dynamic> json) => DatumDatum(
    id: json["id"],
    title: json["title"] == null ? null : json["title"],
    bgColor: json["bg_color"] == null ? null : json["bg_color"],
    textColor: json["text_color"] == null ? null : json["text_color"],
    onlineMembers: json["online_members"] == null ? null : json["online_members"],
    totalMembers: json["total_members"] == null ? null : json["total_members"],
    name: json["name"] == null ? null : json["name"],
    avatar: json["avatar"] == null ? null : json["avatar"],
    rank: json["rank"] == null ? null : json["rank"],
    points: json["points"] == null ? null : json["points"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title == null ? null : title,
    "bg_color": bgColor == null ? null : bgColor,
    "text_color": textColor == null ? null : textColor,
    "online_members": onlineMembers == null ? null : onlineMembers,
    "total_members": totalMembers == null ? null : totalMembers,
    "name": name == null ? null : name,
    "avatar": avatar == null ? null : avatar,
    "rank": rank == null ? null : rank,
    "points": points == null ? null : points,
  };
}

class Meta {
  Meta({
    this.code,
    this.success,
    this.message,
  });

  int code;
  bool success;
  String message;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    code: json["code"],
    success: json["success"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "success": success,
    "message": message,
  };
}





class GetFeedPageResponseData {
  GetFeedPageResponseData({
    this.meta,
    this.data,
  });

  Meta meta;
  List<GetFeedPageResponseDataDatum> data;

  factory GetFeedPageResponseData.fromJson(Map<String, dynamic> json) => GetFeedPageResponseData(
    meta: Meta.fromJson(json["meta"]),
    data: List<GetFeedPageResponseDataDatum>.from(json["data"].map((x) => GetFeedPageResponseDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetFeedPageResponseDataDatum {
  GetFeedPageResponseDataDatum({
    this.id,
    this.name,
    this.type,
    this.data,
    this.size,
    this.title,
    this.webViewUrl,
    this.direction,
  });

  int id;
  String name;
  String type;
  List<FeedDatumDatum> data;
  String size;
  dynamic title;
  String webViewUrl;
  String direction;

  factory GetFeedPageResponseDataDatum.fromJson(Map<String, dynamic> json) => GetFeedPageResponseDataDatum(
    id: json["id"],
    name: json["name"],
    type: json["type"],
    data: json["data"] == null ? null : List<FeedDatumDatum>.from(json["data"].map((x) => FeedDatumDatum.fromJson(x))),
    size: json["size"] == null ? null : json["size"],
    title: json["title"],
    webViewUrl: json["web_view_url"] == null ? null : json["web_view_url"],
    direction: json["direction"] == null ? null : json["direction"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": type,
    "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    "size": size == null ? null : size,
    "title": title,
    "web_view_url": webViewUrl == null ? null : webViewUrl,
    "direction": direction == null ? null : direction,
  };
}

class FeedDatumDatum {
  FeedDatumDatum({
    this.id,
    this.name,
    this.display,
    this.image,
    this.isSelected,
    this.resourceType,
    this.text,
    this.postTags,
    this.imageUrl,
    this.videoUrl,
    this.isLiked,
    this.isBookmarked,
    this.totalLikes,
    this.totalComments,
    this.author,
    this.avatar,
    this.timeString,
  });

  int id;
  String name;
  String display;
  String image;
  bool isSelected;
  String resourceType;
  String text;
  List<PostTag> postTags;
  String imageUrl;
  String videoUrl;
  bool isLiked;
  bool isBookmarked;
  int totalLikes;
  int totalComments;
  String author;
  String avatar;
  String timeString;

  factory FeedDatumDatum.fromJson(Map<String, dynamic> json) => FeedDatumDatum(
    id: json["id"],
    name: json["name"] == null ? null : json["name"],
    display: json["display"] == null ? null : json["display"],
    image: json["image"] == null ? null : json["image"],
    isSelected: json["isSelected"] == null ? null : json["isSelected"],
    resourceType: json["resource_type"] == null ? null : json["resource_type"],
    text: json["text"] == null ? null : json["text"],
    postTags: json["post_tags"] == null ? null : List<PostTag>.from(json["post_tags"].map((x) => PostTag.fromJson(x))),
    imageUrl: json["image_url"] == null ? null : json["image_url"],
    videoUrl: json["video_url"] == null ? null : json["video_url"],
    isLiked: json["isLiked"] == null ? null : json["isLiked"],
    isBookmarked: json["isBookmarked"] == null ? null : json["isBookmarked"],
    totalLikes: json["totalLikes"] == null ? null : json["totalLikes"],
    totalComments: json["totalComments"] == null ? null : json["totalComments"],
    author: json["author"] == null ? null : json["author"],
    avatar: json["avatar"] == null ? null : json["avatar"],
    timeString: json["time_string"] == null ? null : json["time_string"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name == null ? null : name,
    "display": display == null ? null : display,
    "image": image == null ? null : image,
    "isSelected": isSelected == null ? null : isSelected,
    "resource_type": resourceType == null ? null : resourceType,
    "text": text == null ? null : text,
    "post_tags": postTags == null ? null : List<dynamic>.from(postTags.map((x) => x.toJson())),
    "image_url": imageUrl == null ? null : imageUrl,
    "video_url": videoUrl == null ? null : videoUrl,
    "isLiked": isLiked == null ? null : isLiked,
    "isBookmarked": isBookmarked == null ? null : isBookmarked,
    "totalLikes": totalLikes == null ? null : totalLikes,
    "totalComments": totalComments == null ? null : totalComments,
    "author": author == null ? null : author,
    "avatar": avatar == null ? null : avatar,
    "time_string": timeString == null ? null : timeString,
  };
}

class PostTag {
  PostTag({
    this.color,
    this.display,
  });

  String color;
  String display;

  factory PostTag.fromJson(Map<String, dynamic> json) => PostTag(
    color: json["color"],
    display: json["display"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "display": display,
  };
}



class LikePostResponseBody {
  LikePostResponseBody({
    this.meta,
    this.data,
  });

  Meta meta;
  Data data;

  factory LikePostResponseBody.fromJson(Map<String, dynamic> json) => LikePostResponseBody(
    meta: Meta.fromJson(json["meta"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.insertedCount,
    this.insertedId,
  });

  int insertedCount;
  int insertedId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    insertedCount: json["insertedCount"],
    insertedId: json["insertedId"],
  );

  Map<String, dynamic> toJson() => {
    "insertedCount": insertedCount,
    "insertedId": insertedId,
  };
}

class BookmarkPostResponseBody {
  BookmarkPostResponseBody({
    this.meta,
    this.data,
  });

  Meta meta;
  Data data;

  factory BookmarkPostResponseBody.fromJson(Map<String, dynamic> json) => BookmarkPostResponseBody(
    meta: Meta.fromJson(json["meta"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": data.toJson(),
  };
}

class DataBookmark {
  DataBookmark({
    this.insertedId,
    this.success,
  });

  int insertedId;
  bool success;

  factory DataBookmark.fromJson(Map<String, dynamic> json) => DataBookmark(
    insertedId: json["inserted_id"],
    success: json["success"],
  );

  Map<String, dynamic> toJson() => {
    "inserted_id": insertedId,
    "success": success,
  };
}



class GetSubjectsForStudyGroupsResponseBodyData {
  GetSubjectsForStudyGroupsResponseBodyData ({
    this.meta,
    this.data,
  });

  Meta meta;
  List<GetSubjectsForStudyGroupsResponseBodyDataDatum> data;

  factory GetSubjectsForStudyGroupsResponseBodyData.fromJson(Map<String, dynamic> json) => GetSubjectsForStudyGroupsResponseBodyData(
    meta: Meta.fromJson(json["meta"]),
    data: List<GetSubjectsForStudyGroupsResponseBodyDataDatum>.from(json["data"].map((x) => GetSubjectsForStudyGroupsResponseBodyDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetSubjectsForStudyGroupsResponseBodyDataDatum {
  GetSubjectsForStudyGroupsResponseBodyDataDatum({
    this.id,
    this.code,
    this.display,
    this.icon,
    this.isActive,
    this.priority,
  });

  int id;
  String code;
  String display;
  String icon;
  int isActive;
  int priority;

  factory GetSubjectsForStudyGroupsResponseBodyDataDatum.fromJson(Map<String, dynamic> json) => GetSubjectsForStudyGroupsResponseBodyDataDatum(
    id: json["id"],
    code: json["code"],
    display: json["display"],
    icon: json["icon"],
    isActive: json["is_active"],
    priority: json["priority"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "display": display,
    "icon": icon,
    "is_active": isActive,
    "priority": priority,
  };
}

class GetOnboardingData {
  GetOnboardingData({
    this.meta,
    this.data,
  });

  Meta meta;
  List<GetOnboardingDataDatum> data;

  factory GetOnboardingData.fromJson(Map<String, dynamic> json) => GetOnboardingData(
    meta: Meta.fromJson(json["meta"]),
    data: List<GetOnboardingDataDatum>.from(json["data"].map((x) => GetOnboardingDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetOnboardingDataDatum {
  GetOnboardingDataDatum({
    this.name,
    this.type,
    this.uiType,
    this.title,
    this.submitWidgetEndpoint,
    this.submitKey,
    this.data,
  });

  String name;
  String type;
  String uiType;
  String title;
  String submitWidgetEndpoint;
  String submitKey;
  List<GetOnboardingDataDatumDatum> data;

  factory GetOnboardingDataDatum.fromJson(Map<String, dynamic> json) => GetOnboardingDataDatum(
    name: json["name"],
    type: json["type"],
    uiType: json["ui_type"],
    title: json["title"],
    submitWidgetEndpoint: json["submit_widget_endpoint"],
    submitKey: json["submit_key"],
    data: List<GetOnboardingDataDatumDatum>.from(json["data"].map((x) => GetOnboardingDataDatumDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "type": type,
    "ui_type": uiType,
    "title": title,
    "submit_widget_endpoint": submitWidgetEndpoint,
    "submit_key": submitKey,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetOnboardingDataDatumDatum {
  GetOnboardingDataDatumDatum({
    this.id,
    this.code,
    this.display,
    this.priority,
    this.isSelected,
    this.language,
    this.isActive,
    this.icons,
    this.languageDisplay,
    this.languageOrder,
  });

  int id;
  dynamic code;
  String display;
  int priority;
  bool isSelected;
  String language;
  int isActive;
  String icons;
  String languageDisplay;
  int languageOrder;

  factory GetOnboardingDataDatumDatum.fromJson(Map<String, dynamic> json) => GetOnboardingDataDatumDatum(
    id: json["id"],
    code: json["code"],
    display: json["display"] == null ? null : json["display"],
    priority: json["priority"] == null ? null : json["priority"],
    isSelected: json["is_selected"],
    language: json["language"] == null ? null : json["language"],
    isActive: json["is_active"] == null ? null : json["is_active"],
    icons: json["icons"] == null ? null : json["icons"],
    languageDisplay: json["language_display"] == null ? null : json["language_display"],
    languageOrder: json["language_order"] == null ? null : json["language_order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "display": display == null ? null : display,
    "priority": priority == null ? null : priority,
    "is_selected": isSelected,
    "language": language == null ? null : language,
    "is_active": isActive == null ? null : isActive,
    "icons": icons == null ? null : icons,
    "language_display": languageDisplay == null ? null : languageDisplay,
    "language_order": languageOrder == null ? null : languageOrder,
  };
}

class CreateGroupResponseBody {
  CreateGroupResponseBody({
    this.meta,
    this.data,
  });

  Meta meta;
  bool data;

  factory CreateGroupResponseBody.fromJson(Map<String, dynamic> json) => CreateGroupResponseBody(
    meta: Meta.fromJson(json["meta"]),
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": data,
  };
}

class UpdateUsernameResponseBody {
  UpdateUsernameResponseBody({
    this.meta,
    this.data,
  });

  Meta meta;
  UpdateUsernameResponseBodyData data;

  factory UpdateUsernameResponseBody.fromJson(Map<String, dynamic> json) => UpdateUsernameResponseBody(
    meta: Meta.fromJson(json["meta"]),
    data: UpdateUsernameResponseBodyData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": data.toJson(),
  };
}

class UpdateUsernameResponseBodyData {
  UpdateUsernameResponseBodyData({
    this.studentId,
    this.studentUsername,
    this.extras,
  });

  int studentId;
  String studentUsername;
  Extras extras;

  factory UpdateUsernameResponseBodyData.fromJson(Map<String, dynamic> json) => UpdateUsernameResponseBodyData(
    studentId: json["student_id"],
    studentUsername: json["student_username"],
    extras: Extras.fromJson(json["extras"]),
  );

  Map<String, dynamic> toJson() => {
    "student_id": studentId,
    "student_username": studentUsername,
    "extras": extras.toJson(),
  };
}

class Extras {
  Extras({
    this.redirect,
  });

  Redirect redirect;

  factory Extras.fromJson(Map<String, dynamic> json) => Extras(
    redirect: Redirect.fromJson(json["redirect"]),
  );

  Map<String, dynamic> toJson() => {
    "redirect": redirect.toJson(),
  };
}

class Redirect {
  Redirect();

  factory Redirect.fromJson(Map<String, dynamic> json) => Redirect(
  );

  Map<String, dynamic> toJson() => {
  };
}

class OnboardingSelectionResponseBody {
  OnboardingSelectionResponseBody({
    this.meta,
    this.data,
  });

  Meta meta;
  bool data;

  factory OnboardingSelectionResponseBody.fromJson(Map<String, dynamic> json) => OnboardingSelectionResponseBody(
    meta: Meta.fromJson(json["meta"]),
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": data,
  };
}

class GetCommentsResponseData {
  GetCommentsResponseData({
    this.meta,
    this.data,
  });

  Meta meta;
  List<GetCommentsResponseDataDatum> data;

  factory GetCommentsResponseData.fromJson(Map<String, dynamic> json) => GetCommentsResponseData(
    meta: Meta.fromJson(json["meta"]),
    data: List<GetCommentsResponseDataDatum>.from(json["data"].map((x) => GetCommentsResponseDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class GetCommentsResponseDataDatum {
  GetCommentsResponseDataDatum({
    this.id,
    this.resourceType,
    this.comment,
    this.author,
    this.avatar,
    this.timestamp,
  });

  int id;
  String resourceType;
  String comment;
  String author;
  String avatar;
  DateTime timestamp;

  factory GetCommentsResponseDataDatum.fromJson(Map<String, dynamic> json) => GetCommentsResponseDataDatum(
    id: json["id"],
    resourceType: json["resource_type"],
    comment: json["comment"],
    author: json["author"],
    avatar: json["avatar"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "resource_type": resourceType,
    "comment": comment,
    "author": author,
    "avatar": avatar,
    "timestamp": "${timestamp.year.toString().padLeft(4, '0')}-${timestamp.month.toString().padLeft(2, '0')}-${timestamp.day.toString().padLeft(2, '0')}",
  };
}










