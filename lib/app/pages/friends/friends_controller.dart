import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';

part 'friends_controller.g.dart';

class FriendsController = _FriendsControllerBase with _$FriendsController;

abstract class _FriendsControllerBase with Store {
  _FriendsControllerBase() {
    getAll();
  }

  getAll() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    return await Hive.openBox('friendBox');
  }
}
