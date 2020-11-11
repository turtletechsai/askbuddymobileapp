

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
