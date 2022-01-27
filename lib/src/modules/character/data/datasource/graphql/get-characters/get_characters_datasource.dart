import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

abstract class GetCharactersDatasource {
  Future<List<CharacterEntity>> getCharacters(int page);
}
