import 'package:flutter/material.dart';

class PlantDetailsScreen extends StatelessWidget {
  const PlantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String plant = "кактус";

    return Scaffold(
      appBar: AppBar(
        title: const Text('Детали растения: $plant'),
      ),
      body: const Padding(
          padding: EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Информация о растении $plant'),
            Text('Происхождение...'),
          ])),
    );
  }
}
