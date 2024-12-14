import 'package:flutter/material.dart';
import 'plant_data.dart';

class PlantDataProvider extends InheritedWidget {
  final List<PlantData> plants;

  const PlantDataProvider({
    required this.plants,
    required Widget child,
    super.key,
  }) : super(child: child);

  static PlantDataProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlantDataProvider>();
  }

  @override
  bool updateShouldNotify(covariant PlantDataProvider oldWidget) {
    return oldWidget.plants != plants;
  }
}
