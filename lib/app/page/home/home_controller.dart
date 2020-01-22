import 'package:crud_mobx/app/shared/models/data_model.dart';
import 'package:crud_mobx/app/shared/repositories/data_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final DataRepository repository;

  @observable
  ObservableFuture<List<DataModel>> posts;

  _HomeControllerBase(this.repository) {
    fetchData();
  }

  @action
  fetchData() {
    posts = repository.getData().asObservable();
  }

  @action
  saveData() {
    repository.postData();
  }

  @action
  patchData() {
    repository.patchData();
  }

  @action
  deleteData() {
    repository.deleteData();
  }
}
