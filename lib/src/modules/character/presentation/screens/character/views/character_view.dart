import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/domain/entities/character_entity.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/presentation/screens/character/components/filter_button_component.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/presentation/screens/character/components/grid_cards_component.dart';

// ignore: must_be_immutable
class CharacterView extends StatelessWidget {
  final List<CharacterEntity> character;
  final ScrollController scrollController;
  final selected = ValueNotifier<bool>(false);
  var selectedFilters = ValueNotifier<Set<String>>({});

  void _onItemTapped(String label) {
    if (selectedFilters.value.contains(label)) {
      selectedFilters.value = Set.from(selectedFilters.value)..remove(label);
    } else {
      selectedFilters.value = Set.from(selectedFilters.value)..add(label);
    }
  }

  List<CharacterEntity> checkFilters(Set<String> filters, List<CharacterEntity> list) {
    List<CharacterEntity> listOfCharactersFiltered = [];

    if (filters.isEmpty) {
      return list;
    }

    for (var filter in filters) {
      listOfCharactersFiltered.addAll(list.where((character) => character.status.toLowerCase() == filter.toLowerCase()).toList());
    }

    return listOfCharactersFiltered;
  }

  CharacterView({Key? key, required this.character, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 30.h,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ValueListenableBuilder(
                  valueListenable: selectedFilters,
                  builder: (context, Set<String> selectedFilters, _) => FilterButtonComponent(
                    label: "Alive",
                    onSelected: () {
                      _onItemTapped("Alive");
                    },
                    enabled: selectedFilters.contains("Alive"),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: selectedFilters,
                  builder: (context, Set<String> selectedFilters, _) => FilterButtonComponent(
                    label: "Dead",
                    onSelected: () {
                      _onItemTapped("Dead");
                    },
                    enabled: selectedFilters.contains('Dead'),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: selectedFilters,
                  builder: (context, Set<String> selectedFilters, _) => FilterButtonComponent(
                    label: "Unknown",
                    onSelected: () {
                      _onItemTapped("Unknown");
                    },
                    enabled: selectedFilters.contains('Unknown'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: selectedFilters,
                builder: (context, Set<String> selectedFilters, _) {
                  return GridCardsComponent(
                    character: checkFilters(selectedFilters, character),
                    index: checkFilters(selectedFilters, character).length,
                    scrollController: scrollController,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
