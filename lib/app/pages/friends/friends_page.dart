import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/app/pages/inventory/inventory_controller.dart';
import 'package:zssn/shared/repositories/item_repository.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import '../../app_controller.dart';
import 'addfriend/addfriend_controller.dart';
import 'friends_controller.dart';
import 'package:path_provider/path_provider.dart';

class FriendsPage extends StatefulWidget {
  final String title;
  const FriendsPage({Key key, this.title = "Amigos"}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

final homecontroller = Modular.get<HomeController>();
final inventorycontroller = Modular.get<InventoryController>();
final personRepository = Modular.get<PersonRepository>();
final itemRepository = Modular.get<ItemRepository>();
final appcontroller = Modular.get<AppController>();

int _currentIndex = 2;

class _FriendsPageState extends ModularState<FriendsPage, FriendsController> {
  //use 'controller' variable to access controller
  AddfriendController addController = Modular.get<AddfriendController>();
  FriendsController friendController = Modular.get<FriendsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add),
        onPressed: () {
          Modular.to.pushNamed('/friends/add');
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: GoogleFonts.creepster(fontSize: 25),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          inventorycontroller.onTap(index);
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Perfil"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("Inventário")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("Amigos")),
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: friendController.list.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(MaterialCommunityIcons.biohazard),
                      color: Colors.red,
                      onPressed: () {
                        personRepository
                            .postInfected(friendController.list[index]);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.red,
                      onPressed: () {
                        friendController.remove(index);
                      },
                    ),
                  ],
                ),
                title: Text(friendController.list[index]),
              ),
            );
          },
        );
      }),
    );
  }
}
