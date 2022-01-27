import 'package:flutter_test/flutter_test.dart';
import 'package:rm_clean_arch_graphql/src/core/data/services/graphql_service.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/data/datasource/graphql/get-characters/get_character_datasource_impl.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

void main() {
  final characterDatasource = GetCharactersDatasourceImpl(GraphQLService());

  test('Should get characters per page', () async {
    final result = await characterDatasource.getCharacters(1);
    expect(result, isA<List<CharacterEntity>>());
  });
}
