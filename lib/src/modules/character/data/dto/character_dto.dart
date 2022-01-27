import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

extension CharacterDto on CharacterEntity {
  static CharacterEntity fromJson(Map json) {
    return CharacterEntity(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      image: json['image'],
      type: json['type'],
    );
  }
}
