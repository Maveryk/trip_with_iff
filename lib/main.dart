import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_with_iff/AppStateNotifier.dart';
import 'screem/tela_principal.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => AppStateNotifier(),
      ),
    ],
    child: TripWithIff(),
  ));
}

class TripWithIff extends StatelessWidget {
  const TripWithIff({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<AppStateNotifier>(context).inicializarTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trip With IFF",
      theme: Provider.of<AppStateNotifier>(context).theme,
      home: const TelaPrincipal(),
    );
  }
}
