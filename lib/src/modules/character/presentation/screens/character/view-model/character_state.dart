import 'package:equatable/equatable.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';

abstract class CharacterState extends Equatable {
  const CharacterState();
}

class CharacterEmpty extends CharacterState {
  const CharacterEmpty();

  @override
  List<Object?> get props => [];
}

class CharacterLoading extends CharacterState {
  const CharacterLoading();

  @override
  List<Object?> get props => [];
}

class CharacterLoaded extends CharacterState {
  final List<CharacterEntity> characters;
  final List<CharacterEntity> infiniteScrollList;
  final bool isLastPage;
  const CharacterLoaded(this.characters, this.infiniteScrollList, this.isLastPage);

  @override
  List<Object?> get props => [characters, infiniteScrollList, isLastPage];
}

class CharacterFailure extends CharacterState {
  final String failureMessage;

  const CharacterFailure(this.failureMessage);

  @override
  List<Object?> get props => [failureMessage];
}
