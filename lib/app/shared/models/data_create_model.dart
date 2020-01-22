class DataCreaterModel {
  int userId;
  int id;
  String title;
  String body;

  DataCreaterModel({this.userId, this.id, this.title, this.body});

  factory DataCreaterModel.fromJson(Map<String, dynamic> json) {
    return DataCreaterModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'id': id, 'title': title, 'body': body};
  }
}
