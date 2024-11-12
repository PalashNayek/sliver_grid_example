// sliver_grid_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';

class SliverGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ItemViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid Example'),
      ),
      body: ChangeNotifierProvider<ItemViewModel>(
        create: (_) => viewModel,
        child: Consumer<ItemViewModel>(
          builder: (context, model, child) {
            return CustomScrollView(
              slivers: [
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      final item = model.items[index];
                      return Card(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image.network(
                                item.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item.title),
                            ),
                          ],
                        ),
                      );
                    },
                    childCount: model.items.length,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
