import 'package:mobx/mobx.dart';
import 'package:zssn/app/modules/home/home_controller.dart';

part 'app_controller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  final HomeController homeController;

  @observable
  String id;

  _AppControllerBase(this.homeController) {
    getId();
  }

  @action
  getId() async {
    var _id;
    _id = await homeController.getIdPersonToHive();
    id = await _id;
    print(' id global $id');
  }
}
