import 'package:get_it/get_it.dart';
import 'package:rm_clean_arch_graphql/src/core/data/services/graphql_service.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/data/datasource/graphql/get-characters/get_character_datasource_impl.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/data/datasource/graphql/get-characters/get_characters_datasource.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/data/repositories/character_repository_impl.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/repositories/character_repository.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/usecases/get-characters/get_characters_use_case.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/usecases/get-characters/get_characters_use_case_impl.dart';

class Inject {
  static init() {
    GetIt getIt = GetIt.instance;

    // core
    getIt.registerLazySingleton<GraphQLService>(() => GraphQLService());

    // datasources
    getIt.registerLazySingleton<GetCharactersDatasource>(() => GetCharactersDatasourceImpl(getIt<GraphQLService>()));

    // repositories
    getIt.registerLazySingleton<CharacterRepository>(() => CharacterRepositoryImpl(getIt<GetCharactersDatasource>()));

    // usecases
    getIt.registerLazySingleton<GetCharactersUseCase>(() => GetCharactersUseCaseImpl(getIt<CharacterRepository>()));
  }
}
