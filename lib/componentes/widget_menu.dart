import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget criarMenu({
      required IconData icone,
      required String rotulo,
      required String rota,
    }) {
      return ListTile(
        leading: Icon(icone),
        title: Text(rotulo),
        onTap: () => Navigator.pushNamed(context, rota),
      );
    }

    // Gera lista de horários de 30 em 30 minutos, das 06:00 às 22:00
    List<String> gerarHorarios() {
      List<String> horarios = [];
      for (int hora = 6; hora <= 21; hora++) {
        horarios.add('${hora.toString().padLeft(2, '0')}:00');
        horarios.add('${hora.toString().padLeft(2, '0')}:30');
      }
      return horarios;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            criarMenu(
              icone: Icons.map,
              rotulo: 'Cadastro de Academias',
              rota: Rotas.academias,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 colunas
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 2, // Proporção para os cards
          ),
          itemCount: gerarHorarios().length,
          itemBuilder: (context, index) {
            final horario = gerarHorarios()[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: Text(
                  horario,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
