import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:zssn/app/app_controller.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/shared/models/items_model.dart';
import 'package:zssn/shared/repositories/item_repository.dart';

part 'inventory_controller.g.dart';

class InventoryController = _InventoryControllerBase with _$InventoryController;

abstract class _InventoryControllerBase with Store {
  final ItemRepository repository;
  //HomeController homeController;
  final homeController = Modular.get<HomeController>();
  final appController = Modular.get<AppController>();

  @observable
  int index = 1;

  @observable
  String id;
  @observable
  Items items;
  @observable
  ObservableFuture<List<Items>> itens;

  _InventoryControllerBase(this.repository) {
    //itens = repository.getPersonitems(appController.id).asObservable();
    getAllItems();
  }

  @action
  getAllItems() async {
    id = homeController.idPerson;
    print('o id quando chama ${id}');
    itens = repository.getPersonitems(id).asObservable();
  }

  onTap(int currentIndex) {
    index = currentIndex;
    switch (currentIndex) {
      case 0:
        Modular.to.pushNamed('/home/');
        break;
      case 1:
        Modular.to.pushReplacementNamed('/inventory/');
        break;
      case 2:
        Modular.to.pushReplacementNamed('/friends/');
        break;
      default:
    }
  }
}
