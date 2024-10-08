import 'package:flutter/material.dart';

class PlantDetailsScreen extends StatefulWidget {
  const PlantDetailsScreen({super.key});

  @override
  _PlantDetailsScreenState createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  List<String> items = [
    "Информация о растении:\nКактусы относятся к семейству суккулентов, способны накапливать воду в стеблях.\n",
    "Происхождение:\nКактусы происходят из Америки, большинство видов распространены в Южной и Северной Америке.\n",
    "Места обитания:\nОбитают в пустынях и полупустынях, предпочитают сухой климат и редкие осадки.\n",
    "Интересные факты:\nНекоторые кактусы могут жить до 200 лет. Цветут кактусы чаще всего ночью.\n",
  ];

  void _addNewItem() {
    setState(() {
      items.add("Новая информация о кактусе.\n");
    });
  }

  void _removeItem(int index) {
    setState(() {
      if (index >= 0 && index < items.length) {
        items.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список свойств растения: кактус'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < items.length; i++)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            items[i],
                            style: const TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _removeItem(i),
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewItem,
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
