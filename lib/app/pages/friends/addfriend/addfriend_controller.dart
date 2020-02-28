import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qrscan/qrscan.dart' as scanner;
part 'addfriend_controller.g.dart';

class AddfriendController = _AddfriendControllerBase with _$AddfriendController;

abstract class _AddfriendControllerBase with Store {
  @observable
  String idFriend = '';

  @action
  scanQRCode() async {
    idFriend = await scanner.scan();
    print(' id qrcode $idFriend');
  }
}
