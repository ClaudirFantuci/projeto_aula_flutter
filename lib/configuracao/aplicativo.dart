import 'package:flutter/material.dart';
import 'package:flutter_application_1/componentes/widget_menu.dart';
import 'package:flutter_application_1/componentes/widget_academias.dart';
import 'package:flutter_application_1/componentes/form.dart';
import 'package:flutter_application_1/componentes/widget_lista_academias.dart';
import 'package:flutter_application_1/componentes/widget_lista_alunos.dart';
import 'package:flutter_application_1/componentes/widget_agendamento.dart';
import 'package:flutter_application_1/componentes/widget_detalhes_agendamento.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciador de Alunos',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: Colors.grey[900],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.yellow,
          elevation: 2,
          titleTextStyle: TextStyle(
            color: Colors.yellow,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.yellow),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.yellow),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.amber, width: 2),
          ),
          filled: true,
          fillColor: Colors.grey[800],
          labelStyle: const TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white),
          prefixIconColor: Colors.yellow,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        cardTheme: CardThemeData(
          color: Colors.grey[850],
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        ),
        textTheme: TextTheme(
          bodyLarge: const TextStyle(fontSize: 16, color: Colors.white),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.white),
          headlineSmall: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.yellow),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.yellow,
          contentTextStyle: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.academias: (context) => const WidgetAcademia(),
        Rotas.form: (context) => const Formulario(),
        Rotas.listaAcademias: (context) => const WidgetListaAcademias(),
        Rotas.listaAlunos: (context) => const WidgetListaAlunos(),
        Rotas.agendamento: (context) => const WidgetAgendamento(),
        Rotas.detalhesAgendamento: (context) =>
            const WidgetDetalhesAgendamento(),
      },
    );
  }
}
