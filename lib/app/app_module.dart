import 'package:zssn/app/pages/friends/addfriend/addfriend_controller.dart';
import 'package:zssn/app/pages/friends/addfriend/addfriend_page.dart';
import 'package:zssn/app/pages/friends/friends_controller.dart';
import 'package:zssn/app/pages/friends/friends_page.dart';
import 'package:zssn/app/pages/inventory/inventory_controller.dart';
import 'package:zssn/app/pages/inventory/inventory_page.dart';
import 'package:zssn/app/pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:zssn/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:zssn/app/app_widget.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/app/modules/home/home_module.dart';
import 'package:zssn/app/pages/splash/splash_page.dart';
import 'package:zssn/shared/repositories/item_repository.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import 'package:zssn/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddfriendController()),
        Bind((i) => FriendsController()),
        Bind((i) => AppController(i.get<HomeController>())),
        Bind((i) => InventoryController(i.get<ItemRepository>())),
        Bind((i) => SplashController(i.get<HomeController>())),
        Bind((i) => HomeController(i.get<PersonRepository>())),
        Bind((i) => PersonRepository(i.get<Dio>())),
        Bind((i) => ItemRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: BASE_URL))),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SplashPage()),
        Router('/home/', module: HomeModule()),
        Router('/inventory/', child: (_, args) => InventoryPage()),
        Router('/friends/', child: (_, args) => FriendsPage()),
        Router('/friends/add', child: (_, args) => AddfriendPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
