import 'package:flutter/material.dart';

class WidgetAcademia extends StatelessWidget {
  const WidgetAcademia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? cidadeSelecionada;
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Academia')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome da Academia',
                  hintText: 'Insira o nome da academia',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome da academia';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Endereço',
                  hintText: 'Insira o endereço da academia',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o endereço';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Cidade'),
                items: const [
                  DropdownMenuItem(
                    value: 'Paranavaí',
                    child: Text('Paranavaí'),
                  ),
                  DropdownMenuItem(value: 'Maringá', child: Text('Maringá')),
                ],
                onChanged: (value) {
                  cidadeSelecionada = value;
                },
                validator: (value) {
                  if (value == null) {
                    return 'Por favor, selecione uma cidade';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 24),
              ElevatedButton(
                child: const Text('Salvar'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Academia salva: $cidadeSelecionada');
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Academia cadastrada com sucesso!'),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
