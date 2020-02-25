import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'addfriend_controller.dart';

class AddfriendPage extends StatefulWidget {
  final String title;
  const AddfriendPage({Key key, this.title = "Adicionar Amigos"})
      : super(key: key);

  @override
  _AddfriendPageState createState() => _AddfriendPageState();
}

class _AddfriendPageState
    extends ModularState<AddfriendPage, AddfriendController> {
  //use 'controller' variable to access controller
  TextEditingController idController = TextEditingController();
  AddfriendController addController = Modular.get<AddfriendController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          style: GoogleFonts.creepster(fontSize: 25),
        ),
      ),
      body: Column(
        children: <Widget>[
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: idController,
              decoration: InputDecoration(
                labelText: "Informe o id do Sobrevivente ",
                labelStyle: TextStyle(color: Colors.green.shade900),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ),
          Center(
            child: FlatButton(
                color: Colors.green.shade900,
                textColor: Colors.white,
                padding: EdgeInsets.all(15.0),
                splashColor: Colors.green,
                child: Text("Adicionar Sobrevivente",
                    style: GoogleFonts.creepster(fontSize: 20)),
                onPressed: () {
                  idController.text;
                  addController.addIdPersonToHive(idController.text);

                  Modular.to.pushReplacementNamed('/friends/');
                }),
          )
        ],
      ),
    );
  }
}
