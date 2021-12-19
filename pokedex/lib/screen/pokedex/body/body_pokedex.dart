import 'package:flutter/cupertino.dart';
import 'package:pokedex/dto/item_dto.dart';
import 'package:pokedex/dto/pokemon_dto.dart';
import 'package:pokedex/screen/pokemon/body_pokemon.dart';

class PokedexBody extends StatelessWidget {
  const PokedexBody({Key? key, required this.list}) : super(key: key);

  final List list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ...list.map((e) {
            if (e is PokemonDto) {
              return PokemonBody(
                pokemonDto: e as PokemonDto,
              );
            }
            return SizedBox(
              height: 10,
            );
          })
        ],
      ),
    );
  }
}