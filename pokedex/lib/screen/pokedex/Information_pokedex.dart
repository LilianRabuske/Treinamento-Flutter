import 'package:pokedex/dto/pokemon_dto.dart';

abstract class PokedexInformation {
  setIsLoading(bool val);
  setPokemonList(List<PokemonDto> list);
  List<PokemonDto> getPokemonList();
}