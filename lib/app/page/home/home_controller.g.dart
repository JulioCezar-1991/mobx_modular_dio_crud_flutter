// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$dataListAtom = Atom(name: '_HomeControllerBase.dataList');

  @override
  ObservableFuture<List<DataListModel>> get dataList {
    _$dataListAtom.context.enforceReadPolicy(_$dataListAtom);
    _$dataListAtom.reportObserved();
    return super.dataList;
  }

  @override
  set dataList(ObservableFuture<List<DataListModel>> value) {
    _$dataListAtom.context.conditionallyRunInAction(() {
      super.dataList = value;
      _$dataListAtom.reportChanged();
    }, _$dataListAtom, name: '${_$dataListAtom.name}_set');
  }

  final _$dataAtom = Atom(name: '_HomeControllerBase.data');

  @override
  DataCreaterModel get data {
    _$dataAtom.context.enforceReadPolicy(_$dataAtom);
    _$dataAtom.reportObserved();
    return super.data;
  }

  @override
  set data(DataCreaterModel value) {
    _$dataAtom.context.conditionallyRunInAction(() {
      super.data = value;
      _$dataAtom.reportChanged();
    }, _$dataAtom, name: '${_$dataAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setBody(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setBody(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic fetchData() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchData();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
