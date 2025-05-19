import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetListaAlunos extends StatelessWidget {
  const WidgetListaAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    final alunos = [
      {'nome': 'João Silva', 'email': 'joao@email.com'},
      {'nome': 'Maria Oliveira', 'email': 'maria@email.com'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Alunos')),
      body: ListView.builder(
        itemCount: alunos.length,
        itemBuilder: (context, index) {
          final aluno = alunos[index];
          return Card(
            child: ListTile(
              title: Text(
                aluno['nome']!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              subtitle: Text(
                'E-mail: ${aluno['email']}',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Rotas.form),
        child: const Icon(Icons.add),
      ),
    );
  }
}
