import 'package:rm_clean_arch_graphql/src/modules/character/data/datasource/graphql/get-characters/get_characters_datasource.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/repositories/character_repository.dart';
import 'package:rm_clean_arch_graphql/src/utils/log.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final GetCharactersDatasource _getCharactersDatasource;

  CharacterRepositoryImpl(this._getCharactersDatasource);

  @override
  Future<List<CharacterEntity>> getCharacters(int page) async {
    try {
      return await _getCharactersDatasource.getCharacters(page);
    } on Exception catch (e, st) {
      Log.log(
        'Error in CharacterRepositoryImpl.getCharacters',
        error: e,
        stackTrace: st,
      );
      rethrow;
    }
  }
}
