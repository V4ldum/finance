import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/physical_assets/presentation/provider/search_coins_controller.dart';
import 'package:finance/feature/physical_assets/presentation/widget/coin_tile.dart';
import 'package:finance/shared/presentation/widget/default_error_widget.dart';
import 'package:finance/shared/presentation/widget/default_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';

class SearchCoinPage extends ConsumerStatefulWidget {
  const SearchCoinPage({
    super.key,
  });

  @override
  ConsumerState<SearchCoinPage> createState() => _SearchCoinPageState();
}

class _SearchCoinPageState extends ConsumerState<SearchCoinPage> {
  final _controller = TextEditingController();

  void _onSearchChanged(String value) {
    // Only rebuild if the clear button would appear
    // This happens when the length of the string changes to 1 or 0
    // we have an unnecessary rebuild when going from 2 to 1 char but it's fine
    if (value.length < 2) {
      setState(() {});
    }
  }

  void _clearSearch() {
    ref.read(searchCoinsControllerProvider.notifier).clearSearch();
    setState(_controller.clear);
  }

  void _search() {
    if (_controller.text.isEmpty) {
      return;
    }

    ref.read(searchCoinsControllerProvider.notifier).searchCoins(query: _controller.text);
  }

  @override
  Widget build(BuildContext context) {
    final searchCoinsResult = ref.watch(searchCoinsControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          textInputAction: TextInputAction.search,
          autofocus: true,
          decoration: InputDecoration(
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    onPressed: _clearSearch,
                    icon: const Icon(Icons.close),
                  )
                : null,
            hintText: S.current.searchCoin,
            border: InputBorder.none,
          ),
          onChanged: _onSearchChanged,
          onSubmitted: (_) => _search(),
        ),
      ),
      body: SafeArea(
        child: searchCoinsResult.when(
          data: (data) {
            if (data.isEmpty) {
              return Container();
            }
            return SingleChildScrollView(
              child: Column(
                children: List.generate(
                  data.length,
                  (index) => CoinSearchTile(coin: data[index]),
                ),
              ),
            );
          },
          error: (error, trace) => DefaultErrorWidget(error: error as DisplayableException, trace: trace),
          loading: () => const DefaultLoadingWidget(),
        ),
      ),
    );
  }
}
