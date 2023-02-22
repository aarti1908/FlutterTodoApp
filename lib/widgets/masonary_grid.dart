import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_todo_app/widgets/grid_tile.dart';

class MasonaryGridView extends StatelessWidget {
  final int itemCount;
  MasonaryGridView({
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    print(itemCount);
    return MasonryGridView.count(
      crossAxisCount: 4,
      itemCount: itemCount,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) {
        return const MasonaryGridTile();
      },
    );
  }
}
