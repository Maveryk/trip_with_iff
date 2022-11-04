import 'package:flutter/material.dart';
import 'screem/tela_principal.dart';

void main() {
  runApp(const TripWithIff());
}

class TripWithIff extends StatelessWidget {
  const TripWithIff({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trip With IFF",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const TelaPrincipal(),
    );
  }
}
