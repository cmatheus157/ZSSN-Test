import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zssn/app/modules/home/home_controller.dart';
import 'package:zssn/shared/models/person_model.dart';
import 'package:zssn/shared/repositories/person_repository.dart';
import 'splash_controller.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key key, this.title = "Zombie Survive Social Network"})
      : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  //use 'controller' variable to access controller
  final homecontroller = Modular.get<HomeController>();
  final repository = Modular.get<PersonRepository>();

  var id;
  var pessoa;
  @override
  void initState() {
    super.initState();
    pessoa = homecontroller.getIdPersonToHive().then((v) {
      pessoa = repository.getPerson(v);
      return pessoa;
    });

    Future.delayed(Duration(seconds: 5)).then((v) {
      homecontroller.getIdPersonToHive() == null
          ? Modular.to.pushReplacementNamed('/home/')
          : Modular.to.pushReplacementNamed('/inventory/');
    });
  }

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
      body: Container(
        color: Colors.green.shade900,
        child: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.creepster(color: Colors.white, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
