class DataListModel {
  int userId;
  int id;
  String title;
  String body;

  DataListModel({this.userId, this.id, this.title, this.body});

  factory DataListModel.fromJson(Map<String, dynamic> json) {
    return DataListModel(
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
