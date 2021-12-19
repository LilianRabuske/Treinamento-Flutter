import 'package:dio/dio.dart';
import 'package:pokedex/dto/item_dto.dart';
import 'package:pokedex/dto/pokemon_dto.dart';

class PokedexService {
  static final list_pokemon_url = "https://pokeapi.co/api/v2/pokemon/?limit=151";

  PokedexService({required this.dio});
  final Dio dio;

  Future<List<T>> _list<T>(String url, T Function(dynamic) funtion) async {
    return Future.wait(
        ((await dio.get(url)).data["results"] as List<dynamic>).map((e) async {
      return funtion((await dio.get(e['url'])).data);
    }).toList());
  }

  Future<List<PokemonDto>> getPokemonlist() async {
    return _list(list_pokemon_url, (e) => PokemonDto.fromJson(e));
  }
}