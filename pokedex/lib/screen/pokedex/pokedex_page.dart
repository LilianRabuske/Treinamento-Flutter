import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/dto/item_dto.dart';
import 'package:pokedex/dto/pokemon_dto.dart';
import 'package:pokedex/enum/footer_enum.dart';
import 'package:pokedex/screen/load.dart';
import 'package:pokedex/screen/pokedex/body/body_pokedex.dart';
import 'package:pokedex/screen/pokedex/footer/footer_pokedex.dart';
import 'package:pokedex/screen/pokedex/header/header_pokedex.dart';
import 'package:pokedex/screen/pokedex/presenter.dart';
import 'package:pokedex/screen/pokedex/Information_pokedex.dart';

class PokedexPage extends StatefulWidget {
  const PokedexPage({Key? key}) : super(key: key);
  @override
  _PokedexPageState createState() => _PokedexPageState();
  static const route = "pokedex";
}

class _PokedexPageState extends State<PokedexPage>
    with SingleTickerProviderStateMixin
    implements PokedexInformation {
  final PokedexPresenter pokedexPresenter = GetIt.I.get();
  var isLoading = true;
  List<PokemonDto> pokeList = [];
  var search = "";
  FooterOptions enumFooterPokedex = FooterOptions.POKEMON;
  @override
  void initState() {
    super.initState();
    pokedexPresenter.pokedexInformation = this;
    pokedexPresenter.inith();
  }

  @override
  List<PokemonDto> getPokemonList() {
    return pokeList;
  }

  @override
  setIsLoading(bool val) {
    setState(() {
      isLoading = val;
    });
  }

  @override
  setPokemonList(List<PokemonDto> list) {
    setState(() {
      pokeList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) return Load();
    return Scaffold(
      body: Column(
        children: [
          PokedexScreenHeader(),
          PokedexBody(
              list: pokedexPresenter.list(enumFooterPokedex, search)),
          PokedexScreenFooter(
            current: enumFooterPokedex,
          ),
        ],
      ),
    );
  }
}
