import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/custom/theme_custom.dart';
import 'package:pokedex/dto/pokemon_dto.dart';
import 'package:pokedex/pokedex_service.dart';
import 'package:pokedex/screen/pokedex/pokedex_page.dart';
import 'package:pokedex/screen/pokedex/presenter.dart';
import 'package:pokedex/screen/pokemon/page_pokemon.dart';

void setUp() {
  Dio dio = Dio();
  GetIt.I.registerFactory(() => PokedexService(dio: dio));
  GetIt.I.registerFactory(
      () => PokedexPresenter(pokedexService: GetIt.I.get()));
}

class PokedexRepository {
}

void main() {
  setUp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeCustom,
      initialRoute: PokedexPage.route,
      routes: {
        PokedexPage.route: (_) => PokedexPage(),
        PokemonPage.route: (context) => PokemonPage(
              pokemonDto:
                  ModalRoute.of(context)?.settings.arguments as PokemonDto,
            ),
      },
    );
  }
}
 
