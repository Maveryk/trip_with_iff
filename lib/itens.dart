import 'package:flutter/material.dart';
import 'task.dart';

class Itens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ItensState();
  }
}

class ItensState extends State<Itens> {
  static final titleController = TextEditingController();
  static final descriptionController = TextEditingController();

  final list = [];

  void remove(index) {
    setState(() {
      list.removeAt(index);
    });
  }

  save() {
    Task task = Task(
        title: titleController.text, description: descriptionController.text);
    setState(() {
      list.add(task);
    });
    titleController.clear();
    descriptionController.clear();
    Navigator.of(context).pop();
  }

  add() {
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
              title: const Text('Adicionar Tarefa'),
              content: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(300)),
                height: 200,
                child: Column(children: [
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: 'Item'),
                  ),
                  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Uso'),
                  )
                ]),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () => save(),
                  child: const Text('Salvar'),
                )
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicione o Item e seu uso'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.white,
            onPressed: () => add(),
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(list[index].title),
              subtitle: Text(list[index].description),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  remove(index);
                },
              ),
            );
          },
          separatorBuilder: (BuildContext context, int separetorIndex) {
            return const Divider();
          },
          itemCount: list.length),
    );
  }
}
