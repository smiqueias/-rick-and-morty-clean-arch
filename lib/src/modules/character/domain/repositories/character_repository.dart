import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

abstract class CharacterRepository {
  Future<List<CharacterEntity>> getCharacters(int page);
}
