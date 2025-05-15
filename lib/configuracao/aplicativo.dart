import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/widget_menu.dart';
import 'package:flutter_application_1/componentes/widget_academias.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.academias: (context) => const WidgetAcademia(),
      },
    );
  }
}
