import 'package:pokedex/dto/name_dto.dart';
import 'package:pokedex/enum/footer_enum.dart';
import 'package:pokedex/pokedex_service.dart';
import 'package:pokedex/screen/pokedex/Information_pokedex.dart';

class PokedexPresenter {
  PokedexPresenter({required this.pokedexService});
  late PokedexInformation pokedexInformation;
  final PokedexService pokedexService;

  inith() async {
    pokedexInformation.setIsLoading(true);

    pokedexInformation.setPokemonList(await pokedexService.getPokemonlist());
    pokedexInformation.setIsLoading(false);
  }

  List list(FooterOptions enumFooterPokedex, String name) {
    Map<FooterOptions, List> _information = {
      FooterOptions.POKEMON: pokedexInformation.getPokemonList(),
    };
    return (_information[enumFooterPokedex] as List<Name>)
        .where((element) => element.name.contains(name))
        .toList();
  }
}
