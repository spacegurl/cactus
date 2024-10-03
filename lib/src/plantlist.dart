import 'package:flutter/material.dart';

class PlantListScreen extends StatefulWidget {
  const PlantListScreen({super.key});

  @override
  _PlantListScreenState createState() => _PlantListScreenState();
}

class _PlantListScreenState extends State<PlantListScreen> {
  final List<String> plants = ['Роза', 'Орхидея', 'Суккулент', 'Кактус'];
  final TextEditingController _textController = TextEditingController();

  void _addPlant() {
    setState(() {
      if (_textController.text.isNotEmpty) {
        plants.add(_textController.text);
        _textController.clear();
      }
    });
  }

  void _removePlant(int index) {
    setState(() {
      plants.removeAt(index);
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список растений'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Добавить растение',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: plants.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(plants[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _removePlant(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPlant,
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}
