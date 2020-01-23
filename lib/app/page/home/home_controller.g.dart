// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$dataCreaterModelAtom =
      Atom(name: '_HomeControllerBase.dataCreaterModel');

  @override
  DataCreaterModel get dataCreaterModel {
    _$dataCreaterModelAtom.context.enforceReadPolicy(_$dataCreaterModelAtom);
    _$dataCreaterModelAtom.reportObserved();
    return super.dataCreaterModel;
  }

  @override
  set dataCreaterModel(DataCreaterModel value) {
    _$dataCreaterModelAtom.context.conditionallyRunInAction(() {
      super.dataCreaterModel = value;
      _$dataCreaterModelAtom.reportChanged();
    }, _$dataCreaterModelAtom, name: '${_$dataCreaterModelAtom.name}_set');
  }

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

  final _$bodyAtom = Atom(name: '_HomeControllerBase.body');

  @override
  String get body {
    _$bodyAtom.context.enforceReadPolicy(_$bodyAtom);
    _$bodyAtom.reportObserved();
    return super.body;
  }

  @override
  set body(String value) {
    _$bodyAtom.context.conditionallyRunInAction(() {
      super.body = value;
      _$bodyAtom.reportChanged();
    }, _$bodyAtom, name: '${_$bodyAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setBody(String newName) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.setBody(newName);
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
