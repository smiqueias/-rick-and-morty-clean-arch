import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

abstract class GetCharactersUseCase {
  Future<List<CharacterEntity>> getCharacters(int page);
}
