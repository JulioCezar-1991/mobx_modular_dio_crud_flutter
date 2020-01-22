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
  ObservableFuture<List<DataListModel>> dataList;

  @observable
  DataCreaterModel data;

  _HomeControllerBase(this.repository) {
    fetchData();
  }

  @action
  void setBody(String value) {
    data.body = value;
  }

  @action
  fetchData() {
    dataList = repository.getData().asObservable();
  }

  @computed
  saveData() {
    return _dataCreate(data);
  }

  Future<DataModel> _dataCreate(DataCreaterModel model) async {
    try {
      var res = await repository.postData(model);
      return res;
    } catch (ex) {
      data = null;
    }
    return null;
  }
}
