import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/repositories/character_repository.dart';

import 'get_characters_use_case.dart';

class GetCharactersUseCaseImpl implements GetCharactersUseCase {
  final CharacterRepository _characterRepository;

  GetCharactersUseCaseImpl(this._characterRepository);

  @override
  Future<List<CharacterEntity>> getCharacters(int page) {
    return _characterRepository.getCharacters(page);
  }
}
