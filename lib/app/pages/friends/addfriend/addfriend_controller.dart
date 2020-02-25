import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
part 'addfriend_controller.g.dart';

class AddfriendController = _AddfriendControllerBase with _$AddfriendController;

abstract class _AddfriendControllerBase with Store {
  addIdPersonToHive(String person) async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var box = await Hive.openBox('friendBox');
    box.add(person);
    print('Name: ${box.get(0)}');
  }
}
