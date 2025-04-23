import 'package:app_ui/app_ui.dart';

class Restaurant {
  const Restaurant({
    required this.id,
    required this.name,
    required this.image,
  });

  final String id;
  final String name;
  final AssetGenImage image;
}
