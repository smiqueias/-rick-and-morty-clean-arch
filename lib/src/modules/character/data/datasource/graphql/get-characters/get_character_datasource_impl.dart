import 'package:graphql/client.dart';
import 'package:rm_clean_arch_graphql/src/core/data/services/graphql_service.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/data/datasource/graphql/get-characters/get_characters_datasource.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/data/dto/character_dto.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';
import 'package:rm_clean_arch_graphql/src/utils/gql_query.dart';
import 'package:rm_clean_arch_graphql/src/utils/log.dart';

class GetCharactersDatasourceImpl with GqlQuery implements GetCharactersDatasource {
  final GraphQLService _graphQLService;

  GetCharactersDatasourceImpl(this._graphQLService);

  @override
  Future<List<CharacterEntity>> getCharacters(int page) async {
    try {
      final response = await _graphQLService.gqlClient.query(
        QueryOptions(
          document: gql(GqlQuery.charactersQuery),
          variables: {"page": page},
        ),
      );

      if (response.data == null) {
        throw [];
      }

      return (response.data!['characters']['results'] as List).map((character) => CharacterDto.fromJson(character)).toList();
    } on Exception catch (e, st) {
      Log.log(
        'Error in GetCharactersDatasourceImpl.getCharacters',
        error: e,
        stackTrace: st,
      );
      rethrow;
    }
  }
}
