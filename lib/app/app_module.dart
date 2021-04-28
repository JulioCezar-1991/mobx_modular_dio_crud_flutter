import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/app_controller.dart';
import 'package:flutter_application_1/app/app_widget.dart';
import 'package:flutter_application_1/app/page/home/home_controller.dart';
import 'package:flutter_application_1/app/page/home/home_page.dart';
import 'package:flutter_application_1/app/shared/util/constanst.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'shared/repositories/data_repository.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<DataRepository>())),
        Bind((i) => DataRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];

  final Widget bootstrap = AppWidget();
}
