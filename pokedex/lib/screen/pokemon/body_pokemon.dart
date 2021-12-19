import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/pokemon_dto.dart';
import 'package:pokedex/screen/pokemon/page_pokemon.dart';
import 'package:pokedex/util/type_color_pokemon.dart';

class PokemonBody extends StatelessWidget {
  const PokemonBody({Key? key, required this.pokemonDto}) : super(key: key);

  final PokemonDto pokemonDto;

  onPokemonPressed(BuildContext context) {
    Navigator.of(context).pushNamed(
      PokemonPage.route,
      arguments: pokemonDto,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ElevatedButton(
        onPressed: () => onPokemonPressed(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.network(
                  pokemonDto.sprite,
                  height: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pokemonDto.name,
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "#" + pokemonDto.id.toString().padLeft(3, '0'),
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                )
              ],
            ),
            Row(
      children: [
        ...pokemonDto.types.map(
          (e) => Container(
            margin: EdgeInsets.only(left: 5),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: typePokemonColor[e],
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
            ),
          ],
        ),
      ),
    );
  }
}