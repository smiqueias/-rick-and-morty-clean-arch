import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/usecases/get-characters/get_characters_use_case.dart';
import 'package:rm_clean_arch_graphql/src/utils/log.dart';
import 'character_state.dart';

class CharacterVM extends ValueNotifier<CharacterState> {
  final GetCharactersUseCase _getCharactersUseCase;
  final List<CharacterEntity> _infiniteScrollList = [];
  bool _isLastPage = false;
  List<CharacterEntity> get infiniteScrollList => _infiniteScrollList;

  bool get isLastPage => _isLastPage;

  CharacterVM(this._getCharactersUseCase) : super(const CharacterEmpty());

  Future<void> getCharacters(int page) async {
    value = const CharacterLoading();
    try {
      final listOfCharacters = await _getCharactersUseCase.getCharacters(page);

      if (listOfCharacters.isEmpty) {
        _isLastPage = true;
      }
      _infiniteScrollList.addAll(listOfCharacters);

      value = CharacterLoaded(listOfCharacters, infiniteScrollList, isLastPage);
    } on SocketException catch (e, st) {
      Log.log('Error in CharacterVM.getCharacters', error: e, stackTrace: st);
      value = const CharacterFailure("Sem conexão. Tente novamente.");
    } on Exception catch (e, st) {
      Log.log('Error in CharacterVM.getCharacters', error: e, stackTrace: st);
      value = const CharacterFailure("Ops! Ocorreu um erro. Tente novamente.");
    }
  }

  Future<void> getMoreCharacters(int page) async {
    try {
      final listOfCharacters = await _getCharactersUseCase.getCharacters(page);

      if (listOfCharacters.isEmpty) {
        _isLastPage = true;
      }
      _infiniteScrollList.addAll(listOfCharacters);

      value = CharacterLoaded(listOfCharacters, infiniteScrollList, isLastPage);
    } on SocketException catch (e, st) {
      Log.log('Error in CharacterVM.getMoreCharacters', error: e, stackTrace: st);
      value = const CharacterFailure("Sem conexão. Tente novamente.");
    } on Exception catch (e, st) {
      Log.log('Error in CharacterVM.getMoreCharacters', error: e, stackTrace: st);
      value = const CharacterFailure("Ops! Ocorreu um erro. Tente novamente.");
    }
  }
}
