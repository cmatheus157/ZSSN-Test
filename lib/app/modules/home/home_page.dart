import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:zssn/app/app_controller.dart';
import 'package:zssn/app/pages/friends/friends_page.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import 'home_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zssn/shared/utils/constants.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Zombie Survive Social Network"})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  PersonModel pessoa;
  final homecontroller = Modular.get<HomeController>();
  final appcontroller = Modular.get<AppController>();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  PersonRepository repository;

  var group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          centerTitle: true,
          title: Text(
            widget.title,
            style: GoogleFonts.creepster(fontSize: 25),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Digite suas informações",
                      style: TextStyle(
                          color: Colors.green.shade900, fontSize: 25)),
                  Divider(),
                  TextField(
                    onChanged: null,
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: "Digite seu nome",
                      labelStyle: TextStyle(color: Colors.green.shade900),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0)),
                    ),
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                  Divider(),
                  TextField(
                    onChanged: null,
                    controller: ageController,
                    decoration: InputDecoration(
                      labelText: "Digite sua idade",
                      labelStyle: TextStyle(color: Colors.green.shade900),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0)),
                    ),
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.black, fontSize: 25.0),
                  ),
                  Divider(),
                  Text(
                    "Escolha seu genero.",
                    style:
                        TextStyle(color: Colors.green.shade900, fontSize: 25),
                  ),
                  Observer(builder: (_) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Radio(
                            value: M,
                            groupValue: homecontroller.gender,
                            onChanged: (gender) {
                              print(gender);
                              homecontroller.setGender(gender);
                            }),
                        Text("Masculino"),
                        Radio(
                            value: F,
                            groupValue: homecontroller.gender,
                            onChanged: (gender) {
                              print(gender);
                              homecontroller.setGender(gender);
                            }),
                        Text("Feminino"),
                      ],
                    );
                  }),
                  Divider(),
                  Observer(builder: (_) {
                    print(' id do obs ${homecontroller.id}');
                    return homecontroller.id == null
                        ? Center(
                            child: FlatButton(
                                color: Colors.green.shade900,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(15.0),
                                splashColor: Colors.green,
                                child: Text("Salvar Sobrevivente",
                                    style: GoogleFonts.creepster(fontSize: 20)),
                                onPressed: () {
                                  PersonModel pessoa = PersonModel(
                                      age: int.parse(ageController.text),
                                      name: nameController.text,
                                      gender: homecontroller.gender);
                                  homecontroller.postPerson(pessoa);
                                  Modular.to
                                      .pushReplacementNamed('/inventory/');
                                }),
                          )
                        : Center(
                            child: FlatButton(
                                color: Colors.green.shade900,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(15.0),
                                splashColor: Colors.green,
                                child: Text("Atualizar Localização",
                                    style: GoogleFonts.creepster(fontSize: 20)),
                                onPressed: () {
                                  PersonModel pessoa = PersonModel(
                                      id: homecontroller.idPerson,
                                      age: int.parse(ageController.text),
                                      name: nameController.text,
                                      gender: homecontroller.gender);
                                  homecontroller.updatePerson(pessoa);
                                  Modular.to
                                      .pushReplacementNamed('/inventory/');
                                }),
                          );
                  }),
                  if (homecontroller.id != null)
                    Center(
                      child: QrImage(
                        data: homecontroller.id,
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
