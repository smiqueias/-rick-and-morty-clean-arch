import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_text_styles.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/presentation/screens/character/view-model/character_state.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/presentation/screens/character/views/character_shimmer_loading_view.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/presentation/screens/character/views/character_view.dart';
import 'view-model/character_vm.dart';

class CharacterScreen extends StatefulWidget {
  static const kRouteName = "/";
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  late CharacterVM _characterVM;
  late final ScrollController _scrollController;

  var offSet = 1;

  void _infinitiScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      if (!_characterVM.isLastPage) {
        offSet++;
        _characterVM.getMoreCharacters(offSet);
      }
    }
  }

  @override
  void initState() {
    _characterVM = GetIt.I<CharacterVM>();
    _characterVM.getCharacters(offSet);
    _scrollController = ScrollController();
    _scrollController.addListener(_infinitiScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_infinitiScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Character',
          style: AppTextStyles.headline6,
        ),
      ),
      body: ValueListenableBuilder(
        valueListenable: _characterVM,
        builder: (context, CharacterState state, _) {
          if (state is CharacterLoading) {
            return const CharacterShimmerLoadingView();
          }

          if (state is CharacterLoaded) {
            return RefreshIndicator(
              onRefresh: () => _characterVM.getCharacters(offSet),
              child: CharacterView(
                character: state.infiniteScrollList,
                scrollController: _scrollController,
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
