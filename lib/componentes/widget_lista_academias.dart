import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetListaAcademias extends StatelessWidget {
  const WidgetListaAcademias({super.key});

  @override
  Widget build(BuildContext context) {
    final academias = [
      {'nome': 'Academia 1', 'cidade': 'Paranavaí'},
      {'nome': 'Academia 2', 'cidade': 'Maringá'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Academias')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: academias.length,
        itemBuilder: (context, index) {
          final academia = academias[index];
          return Card(
            child: ListTile(
              title: Text(
                academia['nome']!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                'Cidade: ${academia['cidade']}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Rotas.academias),
        child: const Icon(Icons.add),
      ),
    );
  }
}
