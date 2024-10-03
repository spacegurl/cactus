import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  final List<String> aboutItems = [
    "Приложение 'Plants' предназначено для любителей растений. Оно помогает расширить знания о ботанике и уходе за растениями.",
    "С его помощью вы можете находить информацию о ваших любимых растениях и получать советы по их выращиванию.",
    "Разработчик: Пеленицына П.А.",
    "Написано на fLuTtEr",
  ];

  final TextEditingController _textController = TextEditingController();

  void _addNewItem() {
    setState(() {
      if (_textController.text.isNotEmpty) {
        aboutItems.add(_textController.text);
        _textController.clear();
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      aboutItems.removeAt(index);
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
        title: const Text('О приложении'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  labelText: 'Добавить новый элемент',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: aboutItems.length,
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  color: Colors.grey,
                  height: 20,
                  thickness: 1,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      aboutItems[index],
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _removeItem(index),
                    ),
                  );
                },
              ),
            ),
          ],
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
