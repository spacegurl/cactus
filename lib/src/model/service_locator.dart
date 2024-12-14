import 'package:get_it/get_it.dart';
import 'plant_data.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<List<PlantData>>([
    PlantData(
      name: 'Роза',
      imageUrl: 'https://plus.unsplash.com/premium_photo-1669997827506-e8e7aa33e7e3?q=80&w=3648&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    PlantData(
      name: 'Орхидея',
      imageUrl: 'https://images.unsplash.com/photo-1655635255185-40984a235b67?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    PlantData(
      name: 'Кактус',
      imageUrl: 'https://images.unsplash.com/photo-1671569525412-c398e4ff27f9?q=80&w=2268&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    PlantData(
      name: 'Лаванда',
      imageUrl: 'https://images.unsplash.com/photo-1658766103910-dbe9a1c598cf?q=80&w=3280&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
  ]);
}
