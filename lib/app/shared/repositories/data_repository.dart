import 'package:crud_mobx/app/shared/models/data_model.dart';
import 'package:crud_mobx/app/shared/util/constanst.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class DataRepository extends Disposable {
  final Dio dio;

  DataRepository(this.dio);

  Future<List<DataModel>> getData() async {
    Response response = await dio.get(URL_BASE + '/posts');
    return (response.data as List)
        .map((item) => DataModel.fromJson(item))
        .toList();
  }

  postData() async {
    var corpo = ({
      "userId": 120,
      "id": null,
      "title": "Titulo",
      "body": "Corpo da postagem"
    });

    dio.options.headers = {"Content-Type": "application/json; charset=UTF_8"};

    Response response = await dio.post(URL_BASE + "/posts", data: corpo);

    print("resposta: ${response.statusCode}");
    print("resposta: ${response.data}");
  }

  putData() async {
    //O método put é obrigatorio enviar todo o corpo do json para atualizar os dados.
    var corpo = ({
      "userId": 120,
      "id": null,
      "title": "Titulo alterado",
      "body": "Corpo da postagem alterado"
    });

    dio.options.headers = {"Content-Type": "application/json; charset=UTF_8"};

    Response response = await dio.put(URL_BASE + "/posts/2", data: corpo);

    print("resposta: ${response.statusCode}");
    print("resposta: ${response.data}");
  }

  patchData() async {
    //O método patch atualiza apenas os campos enviados no json
    var corpo =
        ({"userId": 120, "id": null, "body": "Corpo da postagem alterado"});

    dio.options.headers = {"Content-Type": "application/json; charset=UTF_8"};

    Response response = await dio.patch(URL_BASE + "/posts/2", data: corpo);

    print("resposta: ${response.statusCode}");
    print("resposta: ${response.data}");
  }

  deleteData() async {
    Response response = await dio.delete(URL_BASE + "/posts/1-2312");

    print("resposta: ${response.statusCode}");
    print("resposta: ${response.data}");
  }

  @override
  void dispose() {}
}
