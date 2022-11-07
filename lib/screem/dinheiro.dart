import 'package:flutter/material.dart';
import 'tela_principal.dart';
import 'relatorio.dart';

class Dinheiro extends StatelessWidget {
  const Dinheiro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dinheiro para viagem")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Relatorio()),
                  );
                },
                child: const Text("Va para o relatorio de viagem!")),
          ],
        ),
      ),
    );
  }
}
