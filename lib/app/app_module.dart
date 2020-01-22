import 'package:crud_mobx/app/app_controller.dart';
import 'package:crud_mobx/app/page/home/home_controller.dart';
import 'package:crud_mobx/app/page/home/home_page.dart';
import 'package:crud_mobx/app/shared/util/constanst.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:crud_mobx/app/app_widget.dart';

import 'shared/repositories/data_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<DataRepository>())),
        Bind((i) => DataRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
