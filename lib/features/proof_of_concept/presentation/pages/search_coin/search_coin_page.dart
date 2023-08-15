import 'package:finance/features/proof_of_concept/application/providers.dart';
import 'package:finance/features/proof_of_concept/presentation/pages/search_coin/search_coin_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/types.dart';

class SearchCoinPage extends ConsumerStatefulWidget {
  const SearchCoinPage({
    required this.query,
    super.key,
  });

  final String query;

  @override
  ConsumerState<SearchCoinPage> createState() => _SearchCoinPageState();
}

class _SearchCoinPageState extends ConsumerState<SearchCoinPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder(
          future: ref.watch(searchCoinsUseCaseProvider)(widget.query),
          builder: (context, snapshot) {
            return switch (snapshot.connectionState) {
              ConnectionState.none => const Text('none'),
              ConnectionState.active => const Text('active?'),
              ConnectionState.waiting => const Center(
                  child: CircularProgressIndicator(),
                ),
              ConnectionState.done => ListView.separated(
                  itemCount: snapshot.data!.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    final item = snapshot.data![index];
                    return InkWell(
                      onTap: () {
                        ref.watch(searchCoinNavigatorProvider).openCoinData(item.id);
                      },
                      child: Row(
                        children: [
                          switch (item.obverseThumbnailUrl) {
                            Some(value: final url) => Image.network(url),
                            None() => Image.network(
                                'https://s1.qwant.com/thumbr/0x380/8/b/5b6c32a013fc30da78aa4b2a9fdada78f4d3bb8a6e64b17f6280277131feb3/no-image-1024x1024.png?u=https%3A%2F%2Fwww.allianceplast.com%2Fwp-content%2Fuploads%2Fno-image-1024x1024.png&q=0&b=1&p=0&a=0',
                              ),
                          },
                          const SizedBox(width: 12),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  overflow: TextOverflow.clip,
                                ),
                                const SizedBox(width: 12),
                                Text('${item.minYear.unwrap()} - ${item.maxYear.unwrap()}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
            };
          },
        ),
      ),
    );
  }
}
