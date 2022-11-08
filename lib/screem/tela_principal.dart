import 'package:flutter/material.dart';
import 'itens.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Trip With IFF"), actions: [SwitchAppBar()]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Sua Viagem dos sonhos, comeca aqui!",
                textAlign: TextAlign.start,
                // overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("Image/viagem.jpg", width: 500, height: 300),
            ),
            const Text(
              "Vamos te ajudar a lembrar dos itens de sua viagem!",
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  color: Colors.amberAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                    primary: Colors.amber,
                    elevation: 30,
                    shadowColor: Colors.red,
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Itens(),
                      ),
                    );
                  },
                  child: const Text(" → ")),
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchAppBar extends StatefulWidget {
  const SwitchAppBar({super.key});

  @override
  State<SwitchAppBar> createState() => _SwitchAppBarState();
}

class _SwitchAppBarState extends State<SwitchAppBar> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.white,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
