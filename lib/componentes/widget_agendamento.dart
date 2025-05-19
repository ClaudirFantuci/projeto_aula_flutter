import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';

class WidgetAgendamento extends StatefulWidget {
  const WidgetAgendamento({super.key});

  @override
  _WidgetAgendamentoState createState() => _WidgetAgendamentoState();
}

class _WidgetAgendamentoState extends State<WidgetAgendamento> {
  final _formKey = GlobalKey<FormState>();
  String? alunoSelecionado;
  String? academiaSelecionada;
  String? horarioSelecionado;

  @override
  Widget build(BuildContext context) {
    final alunos = ['João Silva', 'Maria Oliveira'];
    final academias = ['Academia 1', 'Academia 2'];
    final horarios = ['08:00', '10:00', '15:00', '18:00'];

    return Scaffold(
      appBar: AppBar(title: const Text('Novo Agendamento')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Aluno',
                      ),
                      items: alunos
                          .map((aluno) => DropdownMenuItem(
                              value: aluno, child: Text(aluno)))
                          .toList(),
                      onChanged: (value) => alunoSelecionado = value,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Academia',
                      ),
                      items: academias
                          .map((academia) => DropdownMenuItem(
                              value: academia, child: Text(academia)))
                          .toList(),
                      onChanged: (value) => academiaSelecionada = value,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        labelText: 'Horário',
                      ),
                      items: horarios
                          .map((horario) => DropdownMenuItem(
                              value: horario, child: Text(horario)))
                          .toList(),
                      onChanged: (value) => horarioSelecionado = value,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Salvar Agendamento'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
