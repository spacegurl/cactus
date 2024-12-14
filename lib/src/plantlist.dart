import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'model/plant_data.dart';
import 'model/plant_data_provider.dart';
import 'model/service_locator.dart';

class PlantListScreen extends StatelessWidget {
  PlantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final plants = getIt<List<PlantData>>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Список растений'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Поиск',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: plants.length,
              itemBuilder: (context, index) {
                final plant = plants[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 3,
                  child: ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: plant.imageUrl,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      plant.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    onTap: () {
                      Navigator.pushNamed(context, '/plantdetails', arguments: plant);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/about');
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.info),
      ),
    );
  }
}
