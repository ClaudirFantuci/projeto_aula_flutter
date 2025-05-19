import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({super.key});

  @override
  Widget build(BuildContext context) {
    Widget criarMenu({
      required String rotulo,
      required String rota,
    }) {
      return ListTile(
        title: Text(rotulo, style: const TextStyle(color: Colors.yellow)),
        onTap: () => Navigator.pushNamed(context, rota),
        tileColor: Colors.grey[850],
      );
    }

    List<String> horarios = ["08:00", "10:00", "15:00", "18:00"];

    return Scaffold(
      appBar: AppBar(title: const Text('Menu Principal')),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.amber],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            criarMenu(
              rotulo: 'Cadastro de Academias',
              rota: Rotas.academias,
            ),
            criarMenu(
              rotulo: 'Cadastro de Alunos',
              rota: Rotas.form,
            ),
            criarMenu(
              rotulo: 'Lista de Academias',
              rota: Rotas.listaAcademias,
            ),
            criarMenu(
              rotulo: 'Lista de Alunos',
              rota: Rotas.listaAlunos,
            ),
            criarMenu(
              rotulo: 'Novo Agendamento',
              rota: Rotas.agendamento,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: horarios.length,
          itemBuilder: (context, index) {
            final horario = horarios[index];
            return Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                title: Text(
                  'Horário: $horario',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      'Aluno: Aluno ${index + 1}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      'Academia: Academia ${index + 1}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.pushNamed(context, Rotas.detalhesAgendamento,
                      arguments: {
                        'aluno': 'Aluno ${index + 1}',
                        'academia': 'Academia ${index + 1}',
                        'horario': horario,
                      });
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Rotas.agendamento),
        child: const Icon(Icons.add),
      ),
    );
  }
}
