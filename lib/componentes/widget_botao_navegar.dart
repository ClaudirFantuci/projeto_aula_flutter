import 'package:flutter/material.dart';

class WidgetBotaoNavegar extends StatelessWidget {
  final String rotulo;
  final String rota;
  final BuildContext context;

  const WidgetBotaoNavegar({
    super.key,
    required this.rota,
    required this.rotulo,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }
}
