import 'package:flutter/material.dart';

class WidgetDetalhesAgendamento extends StatelessWidget {
  const WidgetDetalhesAgendamento({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: const Text('Detalhes do Agendamento')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Aluno: ${args['aluno']}'),
                const SizedBox(height: 16),
                Text('Academia: ${args['academia']}'),
                const SizedBox(height: 16),
                Text('Horário: ${args['horario']}'),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Voltar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
