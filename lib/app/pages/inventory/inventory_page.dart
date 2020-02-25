import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zssn/app/app_controller.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/shared/models/items_model.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/repositories/item_repository.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import 'inventory_controller.dart';

class InventoryPage extends StatefulWidget {
  final String title;

  const InventoryPage({Key key, this.title = "Inventário "}) : super(key: key);

  @override
  _InventoryPageState createState() => _InventoryPageState();
}

class _InventoryPageState
    extends ModularState<InventoryPage, InventoryController> {
  //use 'controller' variable to access controller
  final homecontroller = Modular.get<HomeController>();
  final inventorycontroller = Modular.get<InventoryController>();
  final personRepository = Modular.get<PersonRepository>();
  final itemRepository = Modular.get<ItemRepository>();
  final appcontroller = Modular.get<AppController>();

  Future<String> pessoa;
  Future<PersonModel> pessoa2;
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    String id;
    var pessoa;
    Future<PersonModel> pessoa2;
    List<Items> item = List<Items>();

    return Scaffold(
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
            title: Text("Profile"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood), title: Text("Inventário")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("Amigos")),
        ],
      ),
      body: Observer(builder: (_) {
        if (inventorycontroller.itens.error != null) {
          return Center(child: Text('error'));
        }
        if (inventorycontroller.itens.value == null) {
          return Center(child: CircularProgressIndicator());
        }

        var pessoas = inventorycontroller.itens.value;

        //.getAllPeople('58bfca5e-5f64-4b3a-8717-a63cd67d425f');

        return ListView.builder(
          itemCount: pessoas.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                trailing: Text('${pessoas[index].item.points} pontos'),
                subtitle: Text('quantidade ${pessoas[index].quantity}'),
                title: Text('${pessoas[index].item.name}'),
              ),
            );
          },
        );
      }),
    );
  }
}
