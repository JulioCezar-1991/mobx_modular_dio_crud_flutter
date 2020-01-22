// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$postsAtom = Atom(name: '_HomeControllerBase.posts');

  @override
  ObservableFuture<List<DataModel>> get posts {
    _$postsAtom.context.enforceReadPolicy(_$postsAtom);
    _$postsAtom.reportObserved();
    return super.posts;
  }

  @override
  set posts(ObservableFuture<List<DataModel>> value) {
    _$postsAtom.context.conditionallyRunInAction(() {
      super.posts = value;
      _$postsAtom.reportChanged();
    }, _$postsAtom, name: '${_$postsAtom.name}_set');
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic fetchData() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.fetchData();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic saveData() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.saveData();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic patchData() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.patchData();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic deleteData() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction();
    try {
      return super.deleteData();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
