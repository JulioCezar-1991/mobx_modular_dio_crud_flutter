import 'package:crud_mobx/app/shared/models/data_create_model.dart';
import 'package:crud_mobx/app/shared/models/data_list_model.dart';
import 'package:crud_mobx/app/shared/repositories/data_repository.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/data_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final DataRepository repository;

  @observable
  var dataCreaterModel = DataCreaterModel();

  @observable
  ObservableFuture<List<DataListModel>> dataList;

  @observable
  String body = '';

  @action
  void setBody(String newName) {
    dataCreaterModel.body = newName;
  }

  @action
  fetchData() {
    dataList = repository.getData().asObservable();
  }

  _HomeControllerBase(this.repository) {
    fetchData();
  }

  void saveData() async {
    _postCreate(dataCreaterModel);
  }

  Future<DataModel> _postCreate(DataCreaterModel model) async {
    try {
      var res = await repository.postData(model);
      return res;
    } catch (error) {
      dataCreaterModel = null;
    }
    return null;
  }

  void updateData() async {
    _patchData(dataCreaterModel);
  }

  Future<DataModel> _patchData(DataCreaterModel model) async {
    try {
      var res = await repository.patchData(model);
      return res;
    } catch (error) {
      dataCreaterModel = null;
    }
    return null;
  }

  void deleteData() async {
    _deleteData();
  }

  Future<DataModel> _deleteData() async {
    try {
      var res = await repository.deleteData();
      return res;
    } catch (error) {
      dataCreaterModel = null;
    }
    return null;
  }
}
