import 'package:pokedex/dto/name_dto.dart';

class ItemDto extends Name {
  ItemDto({
    required this.url,
    required this.name,
    required this.price,
  }) : super(name: name);
  final String url;
  final String name;
  final int price;

  factory ItemDto.fromJson(dynamic json) {
    return ItemDto(
      name: json["name"] as String,
      price: json["cost"] as int,
      url: json["sprites"]["default"] as String,
    );
  }
}
