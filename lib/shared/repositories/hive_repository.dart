import 'dart:async';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class LocalStorage {
  Completer<Box> instanceFriend = Completer<Box>();
  Completer<Box> instanceID = Completer<Box>();

  LocalStorage() {
    _init();
  }

  _init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    var boxFriend = Hive.openBox('friendBox');
    instanceFriend.complete(boxFriend);
    var boxId = Hive.openBox('idBox');
    instanceID.complete(boxId);
  }

  Future<List<String>> getFriends(String key) async {
    var box = await instanceFriend.future;
    return box.get(key);
  }

  Future deleteFriends(String key) async {
    var box = await instanceFriend.future;
    box.delete(key);
  }

  Future saveFriends(String key, List<String> value) async {
    var box = await instanceFriend.future;
    box.put(key, value);
  }

  Future<String> getId(String key) async {
    var box = await instanceID.future;
    return box.get(key);
  }

  Future deleteId(String key) async {
    var box = await instanceID.future;
    box.delete(key);
  }

  Future saveId(String key, String value) async {
    var box = await instanceID.future;
    box.put(key, value);
  }
}
