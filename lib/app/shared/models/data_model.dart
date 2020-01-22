class DataModel {
  int userId;
  int id;
  String title;
  String body;

  DataModel({this.userId, this.id, this.title, this.body});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
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
