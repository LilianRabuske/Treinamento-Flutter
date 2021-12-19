import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/dto/pokemon_dto.dart';
import 'package:pokedex/screen/pokemon/stat_footer.dart';
import 'package:pokedex/util/type_color_pokemon.dart';

import 'container_component.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key, required this.pokemonDto}) : super(key: key);

  static final String route = "pokemon";

  final PokemonDto pokemonDto;

  @override
  Widget build(BuildContext context) {
    Color color = typePokemonColor[pokemonDto.types.first] as Color;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: color,
      child: ContainerComponent(
        color: color,
        img: Image.network(
          pokemonDto.sprite,
          width: 80,
          fit: BoxFit.cover,
        ),
        title: pokemonDto.name,
        subtitle: Container(
            padding: EdgeInsets.only(
              top: 7,
              bottom: 7,
              left: 12,
              right: 12,
            ),
            child: Text(
              pokemonDto.types.first.toUpperCase(),
              style: Theme.of(context).textTheme.subtitle1,
            ),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(1000),
              ),
            )),
        description: " ",
        footer: StatFooter(listStat: pokemonDto.statsDto, color: color),
      ),
    );
  }
}
