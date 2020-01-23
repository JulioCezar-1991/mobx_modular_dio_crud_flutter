import 'package:crud_mobx/app/shared/models/data_create_model.dart';
import 'package:crud_mobx/app/shared/models/data_list_model.dart';
import 'package:crud_mobx/app/shared/util/constanst.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

import '../models/data_model.dart';

class DataRepository extends Disposable {
  final Dio dio;

  DataRepository(this.dio);

  Future<List<DataListModel>> getData() async {
    Response response = await dio.get(URL_BASE + '/posts');
    return (response.data as List)
        .map((item) => DataListModel.fromJson(item))
        .toList();
  }

  Future<DataModel> postData(DataCreaterModel model) async {
    Response response = await dio.post(URL_BASE + "/posts", data: model);
    debugPrint("resposta: ${response.statusCode}");
    debugPrint("resposta: ${response.data}");
    return DataModel.fromJson(response.data);
  }

  Future<DataModel> patchData(DataCreaterModel model) async {
    Response response = await dio.patch(URL_BASE + "/posts/2", data: model);
    debugPrint("resposta: ${response.statusCode}");
    debugPrint("resposta: ${response.data}");
    return DataModel.fromJson(response.data);
  }

  Future<DataModel> putData(DataCreaterModel model) async {
    Response response = await dio.put(URL_BASE + "/posts/2", data: model);
    debugPrint("resposta: ${response.statusCode}");
    debugPrint("resposta: ${response.data}");
    return DataModel.fromJson(response.data);
  }

  Future<DataModel> deleteData() async {
    Response response = await dio.delete(URL_BASE + "/posts/3");
    debugPrint("resposta: ${response.statusCode}");
    debugPrint("resposta: ${response.data}");
    return DataModel.fromJson(response.data);
  }

  @override
  void dispose() {}
}
