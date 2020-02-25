import 'package:mobx/mobx.dart';
import 'package:zssn/app/modules/home/home_controller.dart';

part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final HomeController homeController;

  _SplashControllerBase(this.homeController);
}
