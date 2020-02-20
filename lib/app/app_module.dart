import 'package:dio/dio.dart';
import 'package:zssn/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:zssn/app/app_widget.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/app/modules/home/home_module.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import 'package:zssn/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<PersonRepository>())),
        Bind((i) => PersonRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
