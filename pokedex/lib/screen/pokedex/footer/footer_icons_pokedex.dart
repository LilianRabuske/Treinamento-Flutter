// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/enum/footer_enum.dart';

class FooterIconPokedex {
  FooterIconPokedex({required this.icon, required this.label});
  final String label;
  final Icon icon;
}

final Map<FooterOptions, FooterIconPokedex> footerPokedexMap = {
  FooterOptions.POKEMON: FooterIconPokedex(
    icon: Icon(Icons.catching_pokemon),
    label: "pokemon",
  ),
  FooterOptions.MOVES: FooterIconPokedex(
    icon: Icon(Icons.play_arrow),
    label: "moves",
  ),
  FooterOptions.ITENS: FooterIconPokedex(
    icon: Icon(Icons.category),
    label: "itens",
  ),
};
